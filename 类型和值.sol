// SPDX-License-Identifier: MIT
// compiler version must be greater than or equal to 0.8.10 and less than 0.9.0
pragma solidity ^0.8.10;

// uint8 ranges from 0 to 2 ** 8 - 1
// uint16 ranges from 0 to 2 ** 16 - 1
// uint256 ranges from 0 to 2 ** 256 - 1
// uint256 ranges from -2 ** 255 to 2 ** 255 - 1
// uint128 ranges from -2 ** 127 to 2 ** 127 - 1


// there is only one contract here，which means there is only one contract
contract Data {
    bool public boo = true;
    uint public u = 123;

    int public i = -123;

    int public minInt = type(int).min;
    int public maxInt = type(int).max;
    // types unique to smart contracts
    address public addr = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    bytes32 public b32 = 0x4f50455241544f525f524f4c4500000000000000000000000000000000000000;


}