// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Token {
    string public name;
    string public symbol;
    uint256 public totalSupply;
    address public owner;

    mapping(address => uint256) public balanceOf;

    event Transfer(address indexed from, address indexed to, uint256 value);
    event Burn(address indexed from, uint256 value);

    modifier onlyOwner() {
        require(msg.sender == owner, "Only the contract owner can perform this action");
        _;
    }

    constructor(string memory _name, string memory _symbol, uint256 _totalSupply) {
        name = _name;
        symbol = _symbol;
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = totalSupply;
        owner = msg.sender;
    }

    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Invalid address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        emit Transfer(msg.sender, _to, _value);
        return true;
    }

    function burn(uint256 _value) public returns (bool success) {
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        balanceOf[msg.sender] -= _value;
        totalSupply -= _value;

        emit Burn(msg.sender, _value);
        return true;
    }

    function mint(address _to, uint256 _value) public onlyOwner returns (bool success) {
        require(_to != address(0), "Invalid address");
        require(totalSupply + _value >= totalSupply, "Overflow");
        require(balanceOf[_to] + _value >= balanceOf[_to], "Overflow");

        balanceOf[_to] += _value;
        totalSupply += _value;

        emit Transfer(address(0), _to, _value);
        return true;
    }
}
