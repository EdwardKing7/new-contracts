// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 351 gas
contract Counter {
    //使用constant常见的好处：降低gas
    // common benefits of using constant：reducing gas emissions 
    address public constant my_address = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    int public constant My_UINT = 123;

}

// 2483 gas
contract Var {
    address public MY_ADDRESS = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
}