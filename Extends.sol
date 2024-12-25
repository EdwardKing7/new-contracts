// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract A {
    // 带上virtual说明继承当前合约的子合约可以在子合约中对此方法进行修改的
    function foo() public pure virtual returns (string memory) {
        return "A";
    }

    function bar() public pure virtual returns (string memory) {
        return "A";
    }

}

contract B is A {
    // 带上override说明修改了父合约的此方法
    function foo() public pure override returns (string memory) {
        return "B";
    }

    function bar() public pure virtual override returns (string memory) {
        return "B";
    }
}

contract C is B {

    function bar() public pure override returns (string memory) {
        return "C";
    }
}