# MyToken Project
## Overview
MyToken is an Ethereum-based ERC-20 token smart contract implemented in Solidity. It provides basic token functionalities and additional features such as token burning, ownership management, and permit functionality for gasless transactions.

## Functionality

- **Mint Tokens**: Only the contract owner can mint new tokens.
- **Transfer Tokens**: Any user can transfer tokens to another address.
- **Burn Tokens**: Any user can burn their own tokens.

## Getting Started

### Installing

To use MyToken in Remix IDE:

1. **Open Remix IDE**: Navigate to [Remix IDE](https://remix.ethereum.org/).

2. **Create a New File**: Click on the "+" button to create a new file and name it `MyToken.sol`.

3. **Copy the Contract**: Copy the following Solidity code into `MyToken.sol`:

   ```solidity
   // SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("satyamJha", "SJH")
        Ownable(){
        transferOwnership(initialOwner);
    }

    function mint(address to, uint256 amount) public onlyOwner {
        require(msg.sender == owner(), "Only the contract owner can mint tokens");
        _mint(to, amount);
    }

    function transfer(address to, uint256 amount) public override returns (bool) {
        return super.transfer(to, amount);
    }
    function burn(uint256 amount) public override {
        super.burn(amount);
    }
}

   ```

4. **Compile the Contract**: In Remix IDE, go to the Solidity Compiler tab, select `MyToken.sol`, and click on the `Compile` button to compile the contract.

### Deploying and Interacting with the Contract

1. **Deploy the Contract**:
   - Navigate to the Deploy & Run Transactions tab in Remix IDE.
   - Ensure you are connected to an Ethereum network (Injected Web3 for mainnet/testnet).
   - Select `MyToken` in the contract dropdown.
   - Click on the `Deploy` button to deploy the contract.

2. **Interact with the Contract**:
   - After deployment, interact with the contract using the provided interface in Remix IDE.
   - Make sure to switch to the contract instance you deployed under the Deployed Contracts section.

## Help

For any issues or questions, please refer to the [Remix IDE documentation](https://remix-ide.readthedocs.io/en/latest/) or

reach out to me at satyammjha0@gmail.com

## Author

- Satyam Kumar
  (https://github.com/satyammjha)

   Email: satyammjha0@gmail.com

   Linkedin: https://www.linkedin.com/in/satyammjha/

## License

This project is licensed under the MIT License.
