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
   import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Permit.sol";

   contract MyToken is ERC20, ERC20Burnable, Ownable, ERC20Permit {
       constructor()
           ERC20("MyToken", "MTK")
           ERC20Permit("MyToken")
       {}

       function mint(address to, uint256 amount) public onlyOwner {
           _mint(to, amount);
       }

       function transfer(address to, uint256 amount) public override returns (bool) {
           _transfer(_msgSender(), to, amount);
           return true;
       }

       function burn(uint256 amount) public override {
           _burn(_msgSender(), amount);
       }

       function burnFrom(address account, uint256 amount) public override {
           uint256 decreasedAllowance = allowance(account, _msgSender()) - amount;
           _approve(account, _msgSender(), decreasedAllowance);
           _burn(account, amount);
       }
   }
   ```

4. **Compile the Contract**: In Remix IDE, go to the Solidity Compiler tab, select `MyToken.sol`, and click on the `Compile` button to compile the contract.

### Deploying and Interacting with the Contract

1. **Deploy the Contract**:
   - Navigate to the Deploy & Run Transactions tab in Remix IDE.
   - Ensure you are connected to an Ethereum network (e.g., JavaScript VM for testing, or Injected Web3 for mainnet/testnet).
   - Select `MyToken` in the contract dropdown.
   - Click on the `Deploy` button to deploy the contract.

2. **Interact with the Contract**:
   - After deployment, interact with the contract using the provided interface in Remix IDE.
   - Make sure to switch to the contract instance you deployed under the Deployed Contracts section.

   **Example Transactions**:

   - **Mint Tokens**: Only the contract owner can mint tokens.
     ```javascript
     // Replace 'toAddress' and 'amount' with appropriate values
     await myToken.methods.mint(toAddress, amount).send({ from: accounts[0] });
     ```

   - **Transfer Tokens**: Any user can transfer tokens to another address.
     ```javascript
     // Replace 'toAddress' and 'amount' with appropriate values
     await myToken.methods.transfer(toAddress, amount).send({ from: accounts[0] });
     ```

   - **Burn Tokens**: Any user can burn their own tokens.
     ```javascript
     // Replace 'amount' with the amount of tokens to burn
     await myToken.methods.burn(amount).send({ from: accounts[0] });
     ```

## Help

For any issues or questions, please refer to the [Remix IDE documentation](https://remix-ide.readthedocs.io/en/latest/) or

reach out to me at satyammjha0@gmail.com

## Author

- Satyam Kumar
(https://github.com/satyammjha)

## License

This project is licensed under the MIT License.
