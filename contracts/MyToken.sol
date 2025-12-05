// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract MyToken {

    // TOKEN METADATA
    string public name = "MyToken";      
    string public symbol = "MTK";        
    uint8 public decimals = 18;          

    // TOTAL SUPPLY
    uint256 public totalSupply;

    // BALANCES
    mapping(address => uint256) public balanceOf;

    // ALLOWANCES
    mapping(address => mapping(address => uint256)) public allowance;

    // CONSTRUCTOR
    constructor(uint256 _totalSupply) {
        totalSupply = _totalSupply;
        balanceOf[msg.sender] = _totalSupply;
    }

    // EVENTS
    event Transfer(address indexed from, address indexed to, uint256 value);
    event Approval(address indexed owner, address indexed spender, uint256 value);

    //  TRANSFER FUNCTION
    function transfer(address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[msg.sender] >= _value, "Insufficient balance");

        // Update balances
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;

        // Emit event
        emit Transfer(msg.sender, _to, _value);

        return true;
    }
        // APPROVE FUNCTION
    function approve(address _spender, uint256 _value) public returns (bool success) {
        require(_spender != address(0), "Cannot approve zero address");

        // Set allowance
        allowance[msg.sender][_spender] = _value;

        // Emit event
        emit Approval(msg.sender, _spender, _value);

        return true;
    }
        // TRANSFERFROM FUNCTION
    function transferFrom(address _from, address _to, uint256 _value) public returns (bool success) {
        require(_to != address(0), "Cannot transfer to zero address");
        require(balanceOf[_from] >= _value, "Insufficient balance");
        require(allowance[_from][msg.sender] >= _value, "Insufficient allowance");

        // Update balances
        balanceOf[_from] -= _value;
        balanceOf[_to] += _value;

        // Decrease allowance
        allowance[_from][msg.sender] -= _value;

        // Emit event
        emit Transfer(_from, _to, _value);

        return true;
    }
        // HELPER FUNCTIONS

    // Explicit total supply function (optional, already public)
    function getTotalSupply() public view returns (uint256) {
        return totalSupply;
    }

    // Function to get token info in a single call
    function getTokenInfo() public view returns (string memory, string memory, uint8, uint256) {
        return (name, symbol, decimals, totalSupply);
    }
}
