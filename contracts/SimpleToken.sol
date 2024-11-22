// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract SimpleToken {
  address owner;
  mapping(address => uint256) public accounts;

  constructor(uint256 initialSupply) {
    owner = msg.sender;
    accounts[owner] = initialSupply;
  }

  function transfer(address to, uint256 value) public {
    require(accounts[msg.sender] >= value, "You do not have enough Eth in your wallet"); //  Check balance
    require(accounts[to] + value >= accounts[to]); // Overflow Check

    accounts[msg.sender] -= value;
    accounts[to] += value; // Subtract and add
  }

  function getAddressBalance(address addr) public view returns(uint256) {
    return accounts[addr];
  }

  function getBalance() public view returns(uint256) {
    return accounts[msg.sender];
  }

  function availableSupply () public view returns(uint256) {
    return address(this).balance;
  }
}