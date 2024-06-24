# Token Smart Contract

## Description

This project is a simple implementation of an ERC20-like token smart contract on the Ethereum blockchain. The contract allows for the creation, transfer, burning, and minting of tokens. It includes standard functionalities such as transferring tokens between accounts, burning tokens to reduce the total supply, and minting new tokens, which can only be done by the contract owner.

## Getting Started

### Executing program
Executing Program
Inside the project directory, in the terminal type:

```bash
Copy code
npm i
```
Open an additional terminal in your VS Code.

In the second terminal type:

```bash
Copy code
npx hardhat node
Back in the first terminal, type:
```
```bash
Copy code
npx hardhat run --network localhost scripts/deploy.js
Copy the address of the deployed contract.
```
Go to Remix IDE Remix.

Go to "Deploy and run transactions" and in the Environment select "Dev - Hardhat provider" and run the environment with the default link.

Then "At address" paste the address of the deployed contract.
## Help

For common issues or problems, refer to the following:

1. Ensure you have the correct version of Solidity compiler specified in `hardhat.config.js`.
2. Verify that your local Hardhat network is running.
3. If you encounter deployment issues, ensure your scripts and contract paths are correct.

## Authors

Contributors names and contact info:

Name - Satyam Kumar

Contact - satyammjha0@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.
