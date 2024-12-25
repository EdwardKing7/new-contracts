// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract GlobalVariables {

    function globalVars() external view returns (address, uint, uint){
        // sender can be somebody or other contracts
        address sender = msg.sender;
        // get current local timestamp
        uint timestamp = block.timestamp;
        // the block number from blockchain
        uint blockNum = block.number;

        return (sender, timestamp, blockNum);
    }
}