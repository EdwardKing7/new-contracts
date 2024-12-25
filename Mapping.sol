// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Mapping {
    //余额
    mapping(address => uint) public balances;
    // 朋友关系
    mapping(address => mapping(address => bool)) public isFriend;

    function examples() external {
        balances[msg.sender] = 123;
        uint bal = balances[msg.sender];
        // uint bal = balances[address(1)];

        balances[msg.sender] += 456;
        delete balances[msg.sender];

        isFriend[msg.sender][address(this)] = true;
    }

}

//结合遍历和映射
contract IterableMapping {
    mapping(address => uint) public balances;
    mapping(address => bool) public inserted;
    address[] public keys;

    function set(address _key, uint _val) external {
        balances[_key] = _val;

        if(!inserted[_key]){
            inserted[_key] = true;
            keys.push(_key);
        }
    }

    function setSize() external view returns (uint){
        return keys.length;
    }

    function first() external view returns (uint){
        return balances[keys[0]];
    }

    function last() external view returns (uint){
        return balances[keys[keys.length-1]];
    }

    function get(uint _i) external view returns (uint){
        return balances[keys[_i]];
    }
}