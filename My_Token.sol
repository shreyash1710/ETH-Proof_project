// SPDX-License-Identifier: MIT
pragma solidity ^0.8.18;

contract My_Token {
    // token details
    string public TokenName = "SHREYASH"; 
    string public TekonID = "SHY"; 
    uint public totalSupply = 0;
    
    // mapping variable here
    mapping(address => uint) public balance;
    
    // minting token function
    function mint (address _address, uint _value) public {
        totalSupply += _value; 
        balance[_address] += _value;
    }
    
    // burning token function
    function burn (address _address, uint _value) public {
        if (balance[_address] > _value){
            totalSupply -= _value;
            balance[_address] -= _value;
        }
    }
}
