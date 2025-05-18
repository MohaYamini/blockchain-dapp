// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice8 {
    mapping(address => uint256) public depots;

    event DepotRecu(address indexed depuis, uint256 montant);

    function deposer() public payable {
        require(msg.value > 0, "Montant nul non autorise");
        depots[msg.sender] += msg.value;
        emit DepotRecu(msg.sender, msg.value);
    }

    function getDepot(address utilisateur) public view returns (uint256) {
        return depots[utilisateur];
    }

    function getSoldeContrat() public view returns (uint256) {
        return address(this).balance;
    }
}
