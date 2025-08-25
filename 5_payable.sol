// SPDX-License-Identifier: MIT
pragma solidity ^0.8.30;

contract ethSend {
    constructor() payable {}
    receive() external payable {}

    // Events
    event sendStatus(bool);
    event callStatus(bool, bytes);

    // Transfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(1 ether);
    }

    // Send
    function sendViaSend(address payable _to) public payable {
        bool sent = _to.send(1 ether);
        emit sendStatus(sent);
        require(sent == true, "The send has failed");
    }

    // Call
    function sendViaCall(address payable _to) public payable {
        (bool success, bytes memory data) = _to.call{value: 1 ether}("");
        emit callStatus(success, data);
        require(success == true, "The send has failed");
    }
}

contract ethReceiver {

    event log(uint amount, uint gas);

    receive() external payable {
        emit log(address(this).balance, gasleft());
    }
}
