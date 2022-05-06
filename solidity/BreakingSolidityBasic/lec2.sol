//SPDX-license-Identifier : GPL-30
pragma solidity >= 0.7.0 < 0.9.0;

contract lec2{
    //data type
    //boolean, bytes, address, uint

    //boolean : true / false [ ! , || , == , && 연산자 가능]
    bool public b = false;//접근 제한자 public
    bool public b1 = !false;
    
    //bytes 1~32byte 저장가능
    bytes4 public bt = 0x99999999; //4byte
    bytes public bt2 = "STRING"; 

    //address : 은행계좌번호 같은 느낌,smart contract 를 배포될때 address가 생김
    address public addr = 0x7EF2e0048f5bAeDe046f6BF797943daF4ED8CB47; //총길이가 40개    

    //int8 : -2^7 ~ 2^7-1 , uint8 0 ~ 2^8 -1 [+, -, *, / 가능]
    int8 public it =4;
    uint256 public uit =1234;

    //uint8 public uit2 =256; 범위 초과로 에러

    //reference type
    //string, Arrays, struct

    //mapping type
}