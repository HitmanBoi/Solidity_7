// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract EtherHandeling {
    address public seller;
    mapping (address => uint256) public balances ;

    modifier OnlySeller() {
        require(msg.sender == seller , "Only seller can sell this.");
        _;
    }

    constructor(){
        seller = msg.sender;
    }

    function deposit() public payable {
        require(msg.value >= 1 ether , "Minimum deposit is one Ether;");
        balances[msg.sender] += msg.value;

    }

    function withdraw (uint amount) public {
        require(balances[msg.sender] >= amount , "Not enough balance.");
        balances[msg.sender] -= amount;
        payable (msg.sender).transfer(amount);
    }
}