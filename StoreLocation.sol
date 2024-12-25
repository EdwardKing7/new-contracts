// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract StoreLocation {
    struct MyStruct {
        uint foo;
        string text;
    }

    mapping(address => MyStruct) public myStructs;

    function examples() external {
        myStructs[msg.sender] = MyStruct({foo:123, text: "bar"});
        // MyStruct storage myStruct = myStructs[msg.sender];
        // // 由于使用的storage存储，所以会在修改局部变量myStruct的时候修改状态变量myStructs
        // myStruct.text = "foo";

        // 如果不打算修改状态变量中的数据可以使用memory存储
        MyStruct memory myStruct2 = myStructs[msg.sender];
        myStruct2.text = "foo";
    }

    function examples2(uint[] calldata y, string calldata s) external returns(uint[] memory){
        myStructs[msg.sender] = MyStruct({foo:123, text: "bar"});
        // 如果不打算修改状态变量中的数据可以使用memory存储
        MyStruct memory myStruct = myStructs[msg.sender];
        myStruct.text = "foo";

        _interal(y);

        uint[] memory memArr = new uint[](3);
        memArr[0] = 234;
        return memArr;

        uint[] memory intTest;
        //比如这里使用的y会直接使用examples2中传来的y，不需要再单独存储，所以不需要消耗gas
        function _interal( uint[] calldata y, string s) private {
            uint x = y[0];
            string t = s;
        }
    }
}