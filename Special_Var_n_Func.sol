// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract SpcialVariables{
    address public sender;
    uint public blockNumber;
    uint public gasPrice;

    function logDetails() public payable {
        sender = msg.sender;
        blockNumber = block.number;
        gasPrice = tx.gasprice ;
    }
}