pragma solidity 0.8.7;

contract Vote{

    //structure 구조체 후보자의 정보
    struct candidator{
        string name;
        uint upVote; //uint(숫자형): u+int 투표수
    }
    //variable
    bool live;
    address owner;
    candidator[] public candidatorList; // 후보자를 담을 수 있는 동적 배열

    //mapping 매핑구역 
    mapping(address => bool) Voted;//대회에서는 address로 작성, 누군지 true false로 판단 

    //event 블록체인에 뭘 했는지 브로드캐스트 기록
    event AddCandidator(string name);
    event UpVote(string candidator, uint upVote );//누가 투표 되었는지, 몇 표를 받았는지
    event FinishVote(bool live);
    event Voting(address owner); //처음 생성 되었을 때

    //modifier 한정자 vote를 아무나 하면 안되기때문에
    modifier onlyOwner{
        require(msg.sender == owner);
        _; // 맞으면 이후에 함수를 실행하라
    }

    //constructor  
    constructor() public{
        owner = msg.sender;
        live= true;

        emit Voting(owner);
    }

    //condidator 후보자 설정
    //인자 값에 memory나 calldata 사용해야 함
    function addCandidator(string calldata _name) public onlyOwner{// 외부에서 호출하기 위해 public  
        
        //투표가 진행중인지 검사
        require(live == true);
        //후보자 수가 5개 미만일경우 가능 [많아질경우 가스가 발생하여 절약]
        require(candidatorList.length <5); 

        //name:후보자 이름 ,_name 에서 _(underbar)는 관례 
        candidatorList.push(candidator(_name,0)); //처음 투표수는 0표 이므로 0

        //이벤트 발생시킬때 emit 사용
        emit AddCandidator(_name);
    } 

    //get condidator 후보자 불러오기

    //voting 투표 몇번 째 후보를 지정할건지
    function upVote(uint _indexOfCandidator) public{
        require(_indexOfCandidator < candidatorList.length);
        
        //투표한 사람 검사
        require(Voted[msg.sender] == false);
        
        candidatorList[_indexOfCandidator].upVote++; 

        //투표 한 사람 재투표 방지
        Voted[msg.sender] = true;

        emit UpVote(candidatorList[_indexOfCandidator].name, candidatorList[_indexOfCandidator].upVote);
    }

    //finish vote 투표 종료
    function finishVote() public onlyOwner{
        live = false;

        emit FinishVote(live);
    }   

}