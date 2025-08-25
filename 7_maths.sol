// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract MathUtils {
    // Addition
    function add(uint256 a, uint256 b) public pure returns (uint256) {
        return a + b;
    }

    // Subtraction
    function subtract(uint256 a, uint256 b) public pure returns (uint256) {
        return a - b;
    }

    // Multiplication
    function multiply(uint256 a, uint256 b) public pure returns (uint256) {
        return a * b;
    }

    // Division
    function divide(uint256 a, uint256 b) public pure returns (uint256) {
        require(b != 0, "Division by zero");
        return a / b;
    }

    // Exponentiation (a ** b)
    function pow(uint256 a, uint256 b) public pure returns (uint256) {
        return a ** b;
    }

    // Modulo
    function modulo(uint256 a, uint256 b) public pure returns (uint256) {
        return a % b;
    }

    // (x + y) % k (built-in vs manual)
    function addMod(uint256 x, uint256 y, uint256 k) public pure returns (uint256, uint256) {
        return (addmod(x, y, k), (x + y) % k);
    }

    // (x * y) % k (built-in vs manual)
    function mulMod(uint256 x, uint256 y, uint256 k) public pure returns (uint256, uint256) {
        return (mulmod(x, y, k), (x * y) % k);
    }
}
