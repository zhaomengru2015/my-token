// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/MyToken.sol";

contract MyTokenTest is Test {
    MyToken private number;

    function setUp() public {
        number = new MyToken(10);
    }
    function testExample() public {
        assertTrue(true);
    }
    function testIncrement() public {
        uint contractNum = number.getNum();
        number.increment();
        assertEq(contractNum +1, number.getNum());
    }
}
