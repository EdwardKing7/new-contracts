// SPDX-License-Identifier: MIT
pragma solidity ^0.8.21;

// 351 gas
contract ForAndWhileLoops {
    function loops() external pure {
        for (uint i = 0; i < 10; i++ ) {
            // code
            if ( i == 5 ){
               continue;
            }
            // more code
            if ( i == 7 ){
               break;
            }
        }

        uint j = 0;
        while (j < 10) {
            // code
            j++;
        }
    }
    // 2 ==> 1+2 = 3
    // 3 ==> 1+2+3 = 6
    function sum(uint _n) external pure returns (uint) {
        uint s;  //0
        for (uint i = 1; i <= _n; i++) {
            s += i;
        }
        return s;
    }
}