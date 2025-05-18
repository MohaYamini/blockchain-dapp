// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice2 {
    uint256 public rateAToB;

    constructor(uint256 initialRate) {
        rateAToB = initialRate;
    }

    function setRate(uint256 newRate) public {
        rateAToB = newRate;
    }

    function convertAToB(uint256 amountA) public view returns (uint256) {
        return amountA * rateAToB;
    }

    function convertBToA(uint256 amountB) public view returns (uint256) {
        require(rateAToB > 0, "Rate must be positive");
        return amountB / rateAToB;
    }
}
