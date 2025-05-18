// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice5 {

    uint256 constant DECIMALS = 100;

    function testerParties(uint256 valeur) public pure returns (uint256 partieEntiere, uint256 partieDecimale) {
        partieEntiere = valeur / DECIMALS;
        partieDecimale = valeur % DECIMALS;
    }
}
