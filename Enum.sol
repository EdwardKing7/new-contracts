// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Enum {
    enum Status {
        None, //默认
        Pending,
        Shipped,
        Completed,
        Rejected,
        Canceled
    }

    Status public status;

    struct Order {
        address buyer;
        Status status;
    }

    Order[] public orders;

    function get() view external returns (Status) {
        return status;
    }

    function set(Status _status) external {
        status = _status;
    }

    function ship() external {
        status = Status.Shipped;
    }

    function reset() external {
        // delete 会让枚举变成默认值
        delete status;
    }

    
}