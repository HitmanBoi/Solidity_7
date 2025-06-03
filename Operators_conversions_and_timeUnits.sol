// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract TimeAndMath{
    uint public sum;
    uint public scaledValue;
    uint public timestamp;

    function calculateSum(uint a, uint b) public {
        sum = a+b ; //Arithematic operation
    }

    function scaleValue(uint value) public {
        scaledValue = value * 1e18; //implicit conversion
    }

    function setTimeStamp(uint daysAfter) public{
        timestamp =  block.timestamp + daysAfter * 1 days ; //Time unit 
    }
}