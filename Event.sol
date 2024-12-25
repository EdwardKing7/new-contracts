// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Event {

    event Log(string message, uint val);
    // indexed 代表索引编号
    event IndexLog(address indexed sender, uint val); // 最多三个索引

    function example() external {
        // 触发事件
        emit Log("foo", 1234);
        emit IndexLog(msg.sender, 789);
    }

    event Message(address indexed _from, address indexed _to, string message);

    function sendMessage(address _to, string calldata message) external {
        emit Message(msg.sender, _to, message);
    }

}