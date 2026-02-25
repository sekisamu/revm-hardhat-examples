// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

/// @title Storage
/// @notice A minimal contract that stores and retrieves a single uint256 value.
/// @dev Demonstrates the simplest possible stateful contract pattern.
contract Storage {
    uint256 private storedNumber;

    /// @notice Stores a new number, overwriting the previous value.
    /// @param num The number to store.
    function store(uint256 num) public {
        storedNumber = num;
    }

    /// @notice Returns the currently stored number.
    /// @return The stored uint256 value.
    function retrieve() public view returns (uint256) {
        return storedNumber;
    }
}
