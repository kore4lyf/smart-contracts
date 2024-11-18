// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract Messanger {
 address owner;
 string[] messages;

 constructor() {
   owner = msg.sender;
 }

 function add(string memory newMessage) public {
  require(msg.sender == owner, "Only deployer can run this function.");
  messages.push(newMessage);
 }

 function count() view public returns(uint) {
  return messages.length;
 }

 function getMessages(uint index) view public returns(string memory) {
  return messages[index];
 }

}
