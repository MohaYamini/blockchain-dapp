// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice1 {
    uint public a;
    uint public b;
    uint public result;

    function setValues(uint _a, uint _b) public {
        a = _a;
        b = _b;
        result = a + b;
    }

    function getResult() public view returns (uint) {
        return result;
    }
}
