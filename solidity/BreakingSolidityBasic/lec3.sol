//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec3{

    /*
    1 ether = 10^9 gwei = 10^18wei  // 0.000000000000000001 = 1^-18 =1wei
    gwei : 가스를 낼때 사용하는 단위, smart contract 를 사용할 때 지불하는비용
    참고사이트 : https://ethereum.github.io/yellowpaper/paper.pdf 26p
    함수를 사용할 경우 가스 사용량 정의되어있음
    */

    uint256 public value = 1 ether;
    uint256 public value2 = 1 wei;
    uint256 public value3 = 1 gwei;

    /*
    remix밑에 창에 가스가 얼마나 사용되는지 알 수 있음
    배포시에도 가스가 필요함
    smart contract를 쓸 때 정보들이 블록체인 네트워크와 연결된다. 이로인해 가스 발생
    가스는 DDOS를 방지할 수 있음 악의적으로 smart contract를 계속 발생 시킬 경우 
    blockchain network를 과부하 시킬 때 가스가 유발하여 비용적인 측면에서 방지하게됨

    */
     
}