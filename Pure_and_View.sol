// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract PureAndView {
    uint public storedValue = 10;


    //View function
    function getStoredValue () public view returns(uint){
        return storedValue; //Reads the state variable
    }

    //Pure Function
    function calculateSum (uint a , uint b) public pure returns (uint){
        return a+b ; //Only uses input parameters
    }

}