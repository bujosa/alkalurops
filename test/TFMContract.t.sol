// SPDX-License-Identifier: UNLICENSED
pragma solidity ^0.8.13;

import "forge-std/Test.sol";
import "../src/TFMContract.sol";

contract TFMContractTest is Test {
    TFMContract public tfmContract;

    function setUp() public {
        tfmContract = new TFMContract();
    }

    function testSum() public {
        uint256 a = 1;
        uint256 b = 2;
        uint256 c = tfmContract.sum(a, b);
        assertTrue(c == 3, "sum is not 3");
    }
}
