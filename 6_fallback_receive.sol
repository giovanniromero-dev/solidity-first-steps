// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract Fallback_Receive {

    // Log which special function ran and with what data/value
    event log(string _name, address _sender, uint _amount, bytes _data);

    // Fallback is called when msg.data is non-empty or no function matches
    fallback() external payable {
        emit log("fallback", msg.sender, msg.value, msg.data);
    }

    // Receive is called on plain ETH transfers (empty calldata)
    receive() external payable {
        emit log("receive", msg.sender, msg.value, "");
    }
}
