// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract OverflowAndUnderflow {
  function overflow() public pure returns(uint256) {
    uint max = 2**256 - 1;
    return max + 1; // 0
  }

  function underflow() public pure returns(uint256) {
    uint min = 0;
    return min - 1;
  }
}