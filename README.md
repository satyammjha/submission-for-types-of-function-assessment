# Token Smart Contract

## Description

This project is a simple implementation of an ERC20-like token smart contract on the Ethereum blockchain. The contract allows for the creation, transfer, burning, and minting of tokens. It includes standard functionalities such as transferring tokens between accounts, burning tokens to reduce the total supply, and minting new tokens, which can only be done by the contract owner.

## Getting Started

### Installing

1. Clone the repository to your local machine:
    ```bash
    git clone https://github.com/satyammjha/submission-for-types-of-function-assessment
    ```
2. Navigate to the project directory:
    ```bash
    cd <folder-path>
    ```
3. Ensure you have [Node.js](https://nodejs.org/) and [npm](https://www.npmjs.com/) installed.

4. Install Hardhat:
    ```bash
    npm install --save-dev hardhat
    ```

5. Initialize Hardhat project:
    ```bash
    npx hardhat
    ```
    Follow the prompts to create a new Hardhat project.

6. Install necessary dependencies:
    ```bash
    npm install --save-dev @nomiclabs/hardhat-ethers ethers
    ```

7. Configure the `hardhat.config.js` file for the local Hardhat network.

8. Create a new file in the `contracts` directory and save the Token contract code there (e.g., `Token.sol`).

### Executing program

1. Compile the smart contract:
    ```bash
    npx hardhat compile
    ```

2. Deploy the contract to the local Hardhat network. Create a deployment script in the `scripts` directory (e.g., `deploy.js`).

3. Run the deployment script:
    ```bash
    npx hardhat run scripts/deploy.js --network hardhat
    ```

4. Interact with the contract via Hardhat console:
    ```bash
    npx hardhat console --network hardhat
    ```

5. Example commands to interact with the contract:
    ```javascript
    const [deployer, user1] = await ethers.getSigners();
    const Token = await ethers.getContractFactory("Token");
    const token = await Token.attach("<deployed-token-address>");
    await token.transfer(user1.address, 100);
    await token.burn(50);
    await token.mint(user1.address, 200);
    ```

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
