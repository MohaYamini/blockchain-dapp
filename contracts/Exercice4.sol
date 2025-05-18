// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice4 {
    
    function testSigne(int256 nombre) public pure returns (string memory) {
        if (nombre > 0) {
            return "Positif";
        } else if (nombre < 0) {
            return "Negatif";
        } else {
            return "Nul";
        }
    }
}
