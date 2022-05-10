//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec5{
    /*
        public : 모든곳에서 접근 가능
        external : public처럼 모든곳에서 접근 가능하나, external이 정의된 자기자신 contract 내에서 접근 불가
        private : 오직 private이 정의된 자기자신 contract에서만 가능(private이 정의된 contract를 상속 받은 자식도 불가능)
        internal : private 처럼 오직 interal 이정의된 자기 contract에서만 가능하고, internal이 정의된 contract도 접근 가능

     */

     //1. public 
     uint256 public a = 5;

     //2. private
     uint256 private a2=5; //배포 할 경우 lec5안에 있기 때문에 변수에 표시되지 않음

}

contract Public_example {
    uint256 public a = 3; 
    
    function changeA(uint256 _value) public { //external로 변경해도 외부에서 접속하는건 작동함
        a =_value;
    }
    function get_a() view public returns (uint256)  {
        return a;
    }
}

contract Public_example_2 {
    
    Public_example instance = new Public_example(); //instance화

    function changeA_2(uint256 _value) public{
      instance.changeA(_value);
    }
    function use_public_example_a() view public returns (uint256)  {
        return instance.get_a();
    }
}

contract private_example {
    uint256 private a = 3;
    
    function get_a() view public returns (uint256)  {
        return a;
    }

}

contract external_example {
    uint256 private a = 3;
    
    function get_a() view external returns (uint256)  {
        return a;
    }

}

contract external_example_2 {
    
    external_example instance = new external_example();

    function external_example_get_a() view public returns (uint256)  {
        return instance.get_a();
    }
}
