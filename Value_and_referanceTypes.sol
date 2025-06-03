// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract DataTypes{
    uint[] public numbers; // Dynamic array
    mapping(address => uint) public balances ; //mapping

    struct Person {
        string name;
        uint age;
    }

    Person public person;

    function addNumber(uint num) public {
        numbers.push(num);
    }

    function updatePerson(string memory name , uint age) public {
        person = Person(name, age);
    }

    function setBalance(address user ,uint amount) public{
        balances[user] = amount ;
    }

}