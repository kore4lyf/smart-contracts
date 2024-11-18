// SPDX-License-Identifier: MIT

pragma solidity 0.7.4;

contract GetterAndSetter {
  string private message = "Hello, world";

  function getMessage() public view returns(string memory) {
    return message;
  }

  function setMessage(string memory newMessage) public {
    message = newMessage;
  }
}