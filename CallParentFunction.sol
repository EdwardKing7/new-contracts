// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract S {
    string public name;

    constructor(string memory _name){
        name = _name;
    }

}

contract T {
    string public text;

    constructor(string memory _text){
        text = _text;
    }

}

// 第一种方式，如果赋的值提前知道，可以直接在合约上写上
contract U is S("s"), T("t") {

}

contract V is S, T {
    constructor(string memory _name, string memory _text) S(_name) T(_text){

    }
}

contract W is S("s"), T {
    constructor(string memory _text) T(_text){
        
    }
}

contract E {
    event Log(string message);

    function foo() public virtual {
        emit Log("E.foo");
    }

    function bar() public virtual {
        emit Log("E.bar");
    }
}

contract F is E{
    function foo() public virtual override {
        emit Log("F.foo");
        E.foo(); //第一种调用父级函数的方式
    }

    function bar() public virtual override {
        emit Log("F.foo");
        super.bar(); //第二种调用父级函数的方式，不需要了解是哪一个父级有此方法
    }
}