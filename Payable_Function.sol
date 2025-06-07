// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract PayableExample {
    address payable public owner ;

    constructor() payable {
        owner = payable(msg.sender) ; //Set contract owner
    }

    //Deposite ether
    function deposite () public payable {}

    //Withdraw ether
    function withdraw () public {
        uint256 amount = address(this).balance;
        (bool success ,) = owner.call{value : amount} ("");
        require (success , "Withdrawl failed");
    }

    //Transfer ether to another address
    function transfer (address payable _to, uint256 _amount) public {
        (bool success,) = _to.call{value : _amount} ("");
        require (success, "Transfer Failed") ;
    }
}