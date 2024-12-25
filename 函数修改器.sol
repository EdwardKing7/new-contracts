// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// basic input sandwich

//原版本（original version）
contract FunctionModifier {

    bool public paused;
    uint public count;

    function setPause(bool _paused) external {
        paused = _paused;
    }
    //定义函数修改器
    modifier whenNotPaused {
        require(!paused, "paused");
        //_代表继续执行所修饰的函数
        _;
    }

    function inc() external whenNotPaused{
        require(!paused, "paused");
        count += 1;
    }

    function dec() external whenNotPaused{
        require(!paused, "paused");
        count -= 1;
        
    }
    modifier cap(uint _x){
        require(_x < 100, "x > 100");
        _;
    }

    function incBy(uint _x) external cap(_x) {
        count += _x;
    }

    modifier sandwitch() {
        count += 10;
        _;
        count *= 2;
    }

    function foo() external sandwitch{
        count += 10;
        count += 1;
        count += 2;
    }
}