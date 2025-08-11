// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract variables_modifiers {

    // Unsigned integer values (uint)
    uint256 a;
    uint8 public b = 3;

    // Signed integer values (int)
    int256 c;
    int8 public d = -32;
    int e = 65;

    // String variable
    string str;
    string public str_public = "This is public";
    string private str_private = "This is private";

    // Boolean variable
    bool boolean;
    bool public boolean_true = true;
    bool private boolean_false = false;

    // Byte variables
    bytes32 first_bytes;
    bytes4 second_bytes;
    bytes1 byte_1;

    // Hashing algorithms
    bytes32 public hashing_keccak256 = keccak256(abi.encodePacked("Hello", "Giovanni", uint(10), msg.sender));
    bytes32 public hashing_sha256 = sha256(abi.encodePacked("Hello", "Giovanni"));
    bytes20 public hashing_ripemd160 = ripemd160(abi.encodePacked("Hello", "Giovanni"));

    // Address variables
    address my_address;
    address public address1 = 0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    address public address2 = msg.sender;

    // Enumeration variable
    enum options {ON, OFF}
    options state;
    options constant defaultChoice = options.OFF;

    function turnOn() public {
        state = options.ON;
    }

    function turnOff() public {
        state = options.OFF;
    }

    function displayState() public view returns (options) {
        return state;
    }
}
