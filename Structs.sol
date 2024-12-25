// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Structs {

    struct Car {
        string model;
        uint year;
        address owner;
    }

    Car public car;
    Car[] public cars;
    mapping(address => Car[]) public carsByOwner;

    function examples() external {
        // storage 永久存储在区块链上的数据，用于声明状态变量
        // memory 函数执行期间暂时存储，用于声明局部变量和参数，
        // calldata 用于存储函数参数和返回值，是只读的，不能被修改


        Car memory toyota = Car("Toyota", 1900, msg.sender);
        Car memory lambo = Car({model:"Lambogini", year:2024, owner: msg.sender});
        Car memory tesla;
        tesla.model = "Tesla";
        tesla.year = 2000;
        tesla.owner = msg.sender;

        cars.push(toyota);
        cars.push(lambo);
        cars.push(tesla);
        cars.push(Car("Ferrari", 2024, msg.sender));

        Car memory _toyota = cars[0];
        _toyota.year = 1999;
        delete _toyota.owner;
        // 删除对象后，对象的所有属性都变成默认值
        delete cars[1];

    }



}