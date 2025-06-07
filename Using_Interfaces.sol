// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

interface ICounter{
    function increment() external;
    function count() external view returns (uint256);
}

contract Counter is ICounter {
    uint256 private _count;

    function increment() external override {
        _count += 1;
    }
    
    function count() external view override returns (uint256) {
        return _count;
    }

}