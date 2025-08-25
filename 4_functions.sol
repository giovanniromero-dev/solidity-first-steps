// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract functions {

    // Pure functions
    function getName() public pure returns (string memory){
        return "Giovanni";
    }

    // View functions
    uint256 x = 100;
    function getNumber() public view returns (uint256){
        return x * 2;
    }
}
