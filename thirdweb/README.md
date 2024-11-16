# Smart Contract

Creating smart contracts using the thirdweb cli.

## Overview

Install the CLI package globally to use the commands anywhere on your system.

Note: If you do not wish to install it globally, you can prefix each command with npx. i.e. ```npx thirdweb <command>```.

```sh
npm i -g thirdweb@latest

# OR

npm i -g thirdweb@latest
```

Once installed, you can view the full list of available commands by running:

```sh
thirdweb
```

To create an app or a contract

```sh
npx thirdweb@latest create
```

From there you can select a contract, you have an option select an empty or a prebuilt contract of ERC20, ERC721 and ERC1155.

To deploy your  :

```sh
npx thirdweb@latest deploy -k <Secrete API Key>
```

## Contracts
1. **HelloWorld** - This contract has a get message function, that returns "Hello, world!" when it is called.
2. **CoinFlip** - This contract mimics coin filp a guess game, where a user make a head (0) or tail (1) guess.
3. **TipJar** - It mimics a crowd funding contract where a user can make donation or make a tip, and the contract owner can withdraw all the donations or tips from the contract.
4. **MessageBoard** - A simple contract that allows people to create a message and store it on blockchain. They will also be able to retrieve the massage with the contract.
5. **ProfileStatus** - A contract that stores a user's web3 addresses in form of a profile and all users to check the status of their profile (whether they have created their profile or not).

## Contract Extensions

Thirdweb allows you to add chunks of prebuilt contracts in your code.

```sol
pragma solidity >=0.7.0 <0.9.0;

import "@thirdweb-dev/contracts/extension/ContractMetadata.sol";

contract TipJar is ContractMetadata {
  address public owner;

  constructor() {
    owner = msg.sender;
  }
  
  ...

  function _canSetContractURI() internal view virtual override returns (bool){
    return msg.sender == owner;
  }
}

```

The contract extension above allows you to add meta data to yougr code.

## Adding your own prebuilt contract to thirdweb

```sh
npx thirdweb publish -k <Secret Key>
```


