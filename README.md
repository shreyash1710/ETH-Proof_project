# ETH-Proof-Project

This Solidity program is a simple program that demonstrates the basic syntax and functionality of the Solidity programming language. The purpose of this program is to serve as a starting point for those who are new to Solidity and want to get a feel for how it works.

## Description

This program is a simple contract written in Solidity, a programming language used for developing smart contracts on the Ethereum blockchain. The contract has simple functions that creates adds and deletes the total no of coins on the network. This program serves as a simple and straightforward introduction to Solidity programming, and can be used as a stepping stone for more complex projects in the future.

## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., My_Token.sol). Copy and paste the following code into the file:

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
    
        


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile My_Token.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "My_Token" contract from the dropdown menu, and then click on the "Deploy" button.

Once the contract is deployed, you can interact with it by calling the mint and burn function. Click on the "My_Token" contract in the left-hand sidebar, and then click on the "mint" or "burn" function. Finally, click on the "transact" button to execute the function and retrieve the desired result.

## Authors

Omkar Kawadghare


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
