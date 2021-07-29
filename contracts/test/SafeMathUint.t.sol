// SPDX-License-Identifier: AGPL-3.0-or-later
pragma solidity 0.6.11;

import { DSTest } from "../../modules/ds-test/src/test.sol";

import { SafeMathUint } from "../SafeMathUint.sol";

contract SafeMathIntTest is DSTest {

    function test_toUint256Safe(uint256 x) public {
        if (x > uint256(type(int256).max)) return;

        assertEq(SafeMathUint.toInt256Safe(x), int256(x));
    }

    function testFail_toUint256Safe(uint256 x) public {
        require(x > uint256(type(int256).max), "must be out of bounds");

        assertEq(SafeMathUint.toInt256Safe(x), int256(x));
    }

}
