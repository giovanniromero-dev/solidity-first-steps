// SPDX-License-Identifier: MIT

// Version
pragma solidity ^0.8.24;

// Import a Smart Contract from OpenZeppelin
import "@openzeppelin/contracts@5.4.0/token/ERC721/ERC721.sol";

// Smart Contract declaration
contract FirstContract is ERC721 {

    // Address of the person deploying the contract
    address public owner;
    
    /* Store in the "owner" variable the address of the person who deploys the contract */
    constructor(string memory _name, string memory _symbol) ERC721(_name, _symbol) {
        owner = msg.sender;
    }
}
