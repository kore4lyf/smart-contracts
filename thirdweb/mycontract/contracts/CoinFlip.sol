// SPDX-License-Identifier: MIT

pragma solidity >=0.7.0 <0.9.0;

contract CoinFlip {
  enum CoinSide { HEADS, TAILS }
  enum FlipResult { WIN, LOSE }

  event Result(address indexed player, CoinSide chosenSide, FlipResult result);
  
  function flipCoin(CoinSide chosenSide) public {
    // Generate a random number
    unint256 randomNumber = uint256(keccak256(abi.encodedPacked(block.timestamp, msg.sender)) % 2;
    
    CoinSide result = CoinSide(randomNumber);

    FlipResult flipResult = (chosenSide == result) ? FlipResult.WIN : FlipResult.LOSE;

    emit Result(msg.sender, chosenSide, flipResult);

  }
}

