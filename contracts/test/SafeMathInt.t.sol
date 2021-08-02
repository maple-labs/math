// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.6.11;

import { DSTest } from "../../modules/ds-test/src/test.sol";

import { SafeMathInt } from "../SafeMathInt.sol";

contract SafeMathIntTest is DSTest {

    function test_toUint256Safe(int256 x) public {
        if (x < int256(0)) return;

        assertEq(SafeMathInt.toUint256Safe(x), uint256(x));
    }

    function testFail_toUint256Safe(int256 x) public {
        require(x < int256(0), "must be negative");

        assertEq(SafeMathInt.toUint256Safe(x), uint256(x));
    }

}
