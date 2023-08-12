// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

contract MyToken {
    uint private num;
    error UnsafeDecrement();

    constructor(uint _num){
        num = _num;
    }
    function increment() public {
        num +=1;
    }
    function decrement(uint _num) public {
        if (num - _num > 0){
            num -= _num;
        }else{
            revert UnsafeDecrement();
        }
    }
    function getNum() public view returns(uint) {
        return num;
    }
}
