// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Counter {

    uint public count;

    constructor() {
        count = 0;
    }

    function inc() external {
        count += 1;
    }

    function add(uint x) public {
        count = count + x;
    }

    function dec() external {
        count -= 1;
    }

}