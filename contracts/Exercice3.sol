// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice3 {
    
    function concat(string memory a, string memory b) public pure returns (string memory) {
        return string(abi.encodePacked(a, b));
    }

    function compare(string memory a, string memory b) public pure returns (bool) {
        return keccak256(bytes(a)) == keccak256(bytes(b));
    }

    function length(string memory a) public pure returns (uint256) {
        return bytes(a).length;
    }

    function substring(string memory str, uint startIndex, uint endIndex) public pure returns (string memory) {
        bytes memory strBytes = bytes(str);
        require(endIndex > startIndex && endIndex <= strBytes.length, "Index out of range");
        
        bytes memory result = new bytes(endIndex - startIndex);
        
        for(uint i = startIndex; i < endIndex; i++) {
            result[i - startIndex] = strBytes[i];
        }
        
        return string(result);
    }
}
