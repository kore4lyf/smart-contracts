// SPDX-License-Identifier: MIT

pragma solidity 0.7.4;

contract arrayStorageMemory {
  uint[20] public arr; // Storage by default

  function startChange() public {
    firstChange(arr);
    secondChange(arr);
  }

  function firstChange(uint[20] storage x) internal { // Can be storage
    x[0] = 4;
  }

  function secondChange(uint[20] memory x) internal pure { // Memory by default
    x[0] = 3;
  }
}