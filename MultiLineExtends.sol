// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

    /*
         X
      /  |
    Y    |
      \  |
         Z
    */

    // X-Y-Z
    /*
        X
      /   \
    Y       A
    |       |
    |       B
      \   /
        Z
    */

    // X-Y-A-B-Z


contract X {
    function foo() public pure virtual returns (string memory){
        return "X";
    }

    function bar() public pure virtual returns (string memory){
        return "X";
    }

    function x() public pure virtual returns (string memory){
        return "X";
    }

}

contract Y is X {
    function foo() public pure virtual override returns (string memory){
        return "Y";
    }

    function bar() public pure virtual override returns (string memory){
        return "Y";
    }

    function y() public pure returns (string memory){
        return "Y";
    }

}
// 后面继承的合约顺序不能变，必须是从最底层逐级递增
contract Z is X, Y {
    // 继承的多个合约中如果都有某个方法，则在override后面需要把所有父合约都写出来
    function foo() public pure virtual override(X,Y) returns (string memory){
        return "Z";
    }

    function bar() public pure override(X,Y) returns (string memory){
        return "Z";
    }
}