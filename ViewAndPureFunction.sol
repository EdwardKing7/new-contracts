// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract ViewAndPureFunction {

    uint public num;

    // readonly function
    function viewFunc() external view returns (uint) {
        return num;
    }

    function pureFunc() external pure returns (uint) {
        return 1;
    }

    function addToNum(uint x) external view returns (uint) {
        //here don't change the state variable 'num''s value，so we use view
        return num + x;
    }

    function add(uint x, uint y) external pure returns (uint) {
        //here didn't use any state variables，so here use pure
        return x + y;
    }

}