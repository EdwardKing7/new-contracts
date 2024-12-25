// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract StateVariables {
    uint public i;
    bool public b;

    address public myAddress;

    function foo() external{
        uint x = 123;
        bool f = false;
        x += 456;
        f = true;

        i = 321;
        b = true;
        myAddress = address(1);
    }

}