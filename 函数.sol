// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
//         函数名称       函数参数          可见范围：只对内使用|只对外使用|内外都可以使用|对内的并且不允许被继承，   对状态变量没有任何的参与|函数中使用到了状态变量，但是没有对状态变量做出任何修改|这个函数是接受支付的
//function<function name>(<parameter types>) {internal|external|public|private}                                 [pure|view|payable]

contract Function {
    //external：外部可以显示的，pure 不依赖任何合约内的变量，可以看作是纯函数
    function add(uint x, uint y) external pure returns (uint) {
        return x + y;
    }
}