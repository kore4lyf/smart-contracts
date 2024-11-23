// SPDX-License-Identifier: MIT

pragma solidity ^0.7.4;

library SafeMath {
  function mul(uint256 a, uint256 b) internal pure returns(uint256) {
    uint256 c = a * b;
    assert(a == 0 || c/a == b);
    return c;
  }

  function div(uint256 a, uint256 b) internal pure returns(uint256) {
    // assert(b > a); // Solidity automatically throws when dividing by 0;
    uint256 c = a/b;
    return c;
  }

  function sub(uint256 a, uint256 b) internal pure returns(uint256) {
    assert(b <= a);
    return a - b;
  }

  function add(uint256 a, uint256 b) internal pure returns(uint256) {
    uint256 c = a + b;
    assert(c >= a);
    return c;
  }
}


contract Bank {
  mapping(address => uint) public accounts;
  using SafeMath for uint256; // Define for what you use SafeMath

  function deposit() public payable {
    require(accounts[msg.sender] + msg.value >= accounts[msg.sender], "Overflow error");
    accounts[msg.sender] = accounts[msg.sender].add(msg.value);
  }

  function withdraw(uint money) public {
    require(money <= accounts[msg.sender]);
    accounts[msg.sender] = accounts[msg.sender].sub(money);
  }
}