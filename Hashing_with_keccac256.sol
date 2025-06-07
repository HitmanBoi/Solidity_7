// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract HashingExample {
    function hashData(string memory _data) public pure returns (bytes32) {
        return keccak256(abi.encodePacked(_data));
    }

    function verifyHash(string memory _data , bytes32 _hash) public pure returns(bool) {
        return keccak256(abi.encodePacked(_data)) == _hash;
    }
}

