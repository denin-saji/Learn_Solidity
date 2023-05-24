// SPDX-License-Identifier: MIT
pragma solidity ^0.8.1;

contract Token 
{

    // public variables here
    string public tokenname= "HITCOIN";
    string public tokenabbr= "HTC";
    uint public total_supply= 0;

    // mapping variable here
    mapping(address => uint) public Balance;

    // mint function
    function mint(address sender,uint value) public {
        Balance[sender] += value;
        total_supply += value;
    }

    // burn function
    function burn(address sender,uint value) public {
        if(Balance[sender]>=value) { 
            Balance[sender] -= value;
            total_supply -= value;
        }
    }

}