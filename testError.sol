// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 351 gas
contract testError {
    // require
    function testRequire(uint _i) public pure{
        // require(it is similar with assert，but when it is not passed， it will return all the gas)
        require(_i <= 10, "i > 10");
    }

    // revert
    function testRevert(uint _i) public pure {
        if (_i > 10) {
            // 有点类似抛异常，(it is a bit like throw an Exception)
            revert("i > 10");
        }

    }
    uint public num = 123;

    // assert
    function testAssert() public view {
        // 断言，如果出问题会阻塞程序(Assert，if it not meet the conditions，the procedure will be blocked，but the gas will not be returned)
        assert(num == 234);
    }

    function foo(uint _i) public {
        num += 1;
        // 如果这里不通过，则num += 1;消耗的gas会被回滚
        require(_i < 10);
    }

    error MyError(address caller, uint _i);
    function testMyErrort(uint _i) public view {
        if (_i > 10) {
            revert MyError(msg.sender, _i);
        }

    }
    
}