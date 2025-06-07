// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherHandler{
    //Receive ether
    receive() external payable {}
    fallback() external payable {}

    function getBalance() public view returns (uint256) {
        return address(this).balance;
    }

    //Send ether using transfer
    function sendViaTransfer(address payable _to) public payable {
        _to.transfer(msg.value);
    }

    //Send ether using call
    function sendViaCall(address payable _to) public payable{
        (bool success,) = _to.call{value: msg.value}("");
        require(success, "Failed to send Ether");
    }
}