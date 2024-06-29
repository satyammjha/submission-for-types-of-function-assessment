// SPDX-License-Identifier: MIT
// Compatible with OpenZeppelin Contracts ^5.0.0
pragma solidity ^0.8.20;

import "@openzeppelin/contracts/token/ERC20/ERC20.sol";
import "@openzeppelin/contracts/token/ERC20/extensions/ERC20Burnable.sol";
import "@openzeppelin/contracts/access/Ownable.sol";

contract MyToken is ERC20, ERC20Burnable, Ownable {
    constructor(address initialOwner)
        ERC20("satyamJha", "SJH")
        Ownable(initialOwner){
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
