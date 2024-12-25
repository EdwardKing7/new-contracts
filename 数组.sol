// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;
contract Array {

    uint[] public nums = [1, 2, 3];
    uint[3] public numsFixed = [4, 5, 6];

    function examples() external {
        nums.push(4); //[1,2,3,4]
        nums[2] = 777; //[1,2,777,4]
        // uint x = nums[2];
        delete nums[1]; //[1,0,777,4]
        nums.pop(); //[1,0,777]

    }
}

contract Array2 {
    // 通过元素移动位置删除数组元素(gas高，但顺序不乱)
    uint[] public arr;
    // [1,2,3] - remove(1) -> [1,3,3] -> [1,3]
    // [1,2,3,4,5,6] - remove(2) -> [1,2,3,4,5,6]-> [1,2,4,5,6]

    function remove(uint _index) public {
        require(_index < arr.length, "index is out of bound");
        for (uint i = _index; i < arr.length-1; i++) {
            arr[i] = arr[i+1];
        }
        arr.pop();
    }

    function test() external returns (bool){
        arr = [1,2,3,4,5];
        remove(2); // [1,2,4,5]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 4);
        assert(arr[3] == 5);
        assert(arr.length == 4);
        return true;
    }
}

contract Array3 {
    // 通过元素移动位置删除数组元素(gas高，但顺序不乱)
    uint[] public arr;
    // [1,2,3] - remove(1) -> [1,3,3] -> [1,3]
    // [1,2,3,4,5,6] - remove(2) -> [1,2,3,4,5,6]-> [1,2,4,5,6]

    function remove(uint _index) public {
        require(_index < arr.length, "index is out of bound");
         arr[_index] = arr[arr.length-1];
        arr.pop();
    }

    function test() external returns (bool){
        arr = [1,2,3,4,5];
        remove(2); // [1,2,5,4]
        assert(arr[0] == 1);
        assert(arr[1] == 2);
        assert(arr[2] == 5);
        assert(arr[3] == 4);
        assert(arr.length == 4);
        return true;
    }
}