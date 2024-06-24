# Token Smart Contract

## Description

This project is a simple implementation of an ERC20-like token smart contract on the Ethereum blockchain. The contract allows for the creation, transfer, burning, and minting of tokens. It includes standard functionalities such as transferring tokens between accounts, burning tokens to reduce the total supply, and minting new tokens, which can only be done by the contract owner.

## Problem Statement

For this project, you will write a smart contract to create your own ERC20 token and deploy it using HardHat or Remix. Once deployed, you should be able to interact with it for your walk-through video. From your chosen tool, the contract owner should be able to mint tokens to a provided address and any user should be able to burn and transfer tokens.

## Approached Solution

1. **Smart Contract Implementation:** 
   - Define the basic properties of the token, including its name, symbol, total supply, and owner.
   - Implement functionalities for transferring tokens, burning tokens, and minting new tokens.
   - Ensure that only the contract owner can mint new tokens.
   - Emit appropriate events for transfers and burns.

2. **Deployment:**
   - Use HardHat for local deployment and testing.
   - Provide a deployment script to automate the process.
   - Guide on how to deploy using Remix for those who prefer a web-based interface.

3. **Interaction:**
   - Use HardHat console and Remix IDE to interact with the deployed contract.
   - Provide example commands for transferring, burning, and minting tokens.

## Getting Started

### Executing Program

1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/satyammjha/submission-for-types-of-function-assessment
    ```

2. Inside the project directory, in the terminal type:
    ```bash
    npm i
    ```
3. Open an additional terminal in your VS Code.

4. In the second terminal type:
    ```bash
    npx hardhat node
    ```

5. Back in the first terminal, type:
    ```bash
    npx hardhat run --network localhost scripts/deploy.js
    ```

6. Copy the address of the deployed contract.

7. Go to Remix IDE [Remix](https://remix.ethereum.org/).

8. Go to "Deploy and run transactions" and in the Environment select "Dev - Hardhat provider" and run the environment with the default link.

9. Then "At address" paste the address of the deployed contract.

After this, the project will be running on your localhost and you will use Remix IDE [Remix](https://remix.ethereum.org/) as the interface to work with the contract.

## Help

For common issues or problems, refer to the following:

1. Ensure you have the correct version of Solidity compiler specified in `hardhat.config.js`.
2. Verify that your local HardHat network is running.
3. If you encounter deployment issues, ensure your scripts and contract paths are correct.

## Authors

Contributors names and contact info:

Name: Satyam Kumar
Contact: satyammjha0@gmail.com

## License

This project is licensed under the MIT License - see the [LICENSE.md](LICENSE.md) file for details.

## Introduction Video

For a detailed walk-through and demonstration, watch the [intro video](https://www.loom.com/share/9d1d2c68f3294acd8296e7cec072b9dd?sid=36afffc1-0964-4f42-b264-65bd42fac879).
