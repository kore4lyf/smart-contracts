// SPDX-License-Identifier: UNLICENSED
pragma solidity >=0.7.0 < 0.9.0;

contract HelloWorld {
  string public message;

  constructor() {
    message = "Hello, World";
  }

  function getMessage() public view returns (string memory) {
    return message;
  }

  function setMessage(string memory msg) public pure {
    message = msg;
  }
}