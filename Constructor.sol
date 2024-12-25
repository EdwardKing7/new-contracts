// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// basic input sandwich

// 构造函数作用，部署的时候就直接给状态变量赋默认值
contract Constructor {
    address public owner;
    uint public x;

    constructor(uint _x) {
        owner = msg.sender;
        x = _x;
    }
    
}