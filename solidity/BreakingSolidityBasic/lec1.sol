//SPDX-license-Identifier : GPL-30
//라이센스 명시 해야 에러가 나지 않는다.

pragma solidity >= 0.7.0 < 0.9.0; //0.7버전 이상 0.9미만 버전을 사용하겠다.

//smart contract  

contract Hello{
    //solidity는 print 기능이 없음
    string public hi = "Hello solidity";
}