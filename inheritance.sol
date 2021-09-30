// SPDX-License-Identifier: MIT
pragma solidity ^0.8.3;


contract computer {
    function foo() public pure virtual returns (string memory) {
        return "computer";
    }
}
contract mobile {
    function foo() public pure virtual returns (string memory) {
        return "mobile";
    }
}

// Contracts inherit other contracts by using the keyword 'is'.
contract PC is computer {
    // Override computer.foo()
    function foo() public pure virtual override returns (string memory) {
        return "PC";
    }
}


// Contracts can inherit from multiple parent contracts.
// When a function is called that is defined multiple times in
// different contracts, parent contracts are searched from
// right to left, and in depth-first manner.

contract laptop is PC, mobile {
    // D.foo() returns "C"
    // since C is the right most parent contract with function foo()
    function foo() public pure override(PC, mobile) returns (string memory) {
        return super.foo();
    }
}
