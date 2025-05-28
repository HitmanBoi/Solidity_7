// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

//A simple contract to demonstrate basic syntax

contract BasicFeatures {
    uint public storedData; //State variable

    //single line comment : Initializes the state variable
    function set(uint x) public{
        storedData = x; //Assigns value
    }
    /* 
    Multi line comments:
    Function to retieve value
    */

    function get()public view returns (uint) { 
        return storedData;
        }

}