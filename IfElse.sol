// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 351 gas
contract Counter {
    function example(uint _x) external pure returns (uint) {
        if (_x < 10) {
            return 1;
        } else if (_x < 20) {
            return 2;
        } else {
            return 3;
        }
    }
    //ternary 三元表达式
    function ternary(uint _x) external pure returns (uint) {
        // if (_x < 10) {
        //     return 1;
        // }
        // return 2;
        return _x < 10 ? 1 : 2;
    }
}