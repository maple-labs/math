pragma solidity ^0.6.7;

import "ds-test/test.sol";

import "./Math.sol";

contract MathTest is DSTest {
    Math math;

    function setUp() public {
        math = new Math();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
