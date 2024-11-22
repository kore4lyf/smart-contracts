// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

contract Bank {
  struct Account {
    address addr;
    uint balance;
  }

  Account public acc = Account({
    addr: 0x9278430A2e5088b7659f59D15Bc4961963527b00,
    balance: 50
  });

  Account public daniel = Account({
    addr: 0x5E3232CB6Ae602Ed1DC2d62Ca1f9Ae2754A3Cb6A,
    balance: 1000
  });

  function addAmount(uint _amount) public {
    acc.balance += _amount;
  }

  function withdraw(uint _amount) public {
    require(acc.balance >= _amount, "Insufficient Balance");
    acc.balance -= _amount;
  }

  function transferToDaniel(uint256 _amount) public {
    require(acc.balance >= _amount, "Insufficient Balance");
    require(daniel.balance + _amount > daniel.balance);
    acc.balance -= _amount;
    daniel.balance += _amount;
  }
}