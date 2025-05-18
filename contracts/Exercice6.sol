// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

contract Exercice6 {
    int[] public tableau;

    function ajouter(int valeur) public {
        tableau.push(valeur);
    }

    function supprimer(uint index) public {
        require(index < tableau.length, "Index hors limites");
        
        for (uint i = index; i < tableau.length - 1; i++) {
            tableau[i] = tableau[i + 1];
        }
        tableau.pop();
    }

    function getElement(uint index) public view returns (int) {
        require(index < tableau.length, "Index hors limites");
        return tableau[index];
    }

    function taille() public view returns (uint) {
        return tableau.length;
    }

    function contient(int valeur) public view returns (bool) {
        for (uint i = 0; i < tableau.length; i++) {
            if (tableau[i] == valeur) {
                return true;
            }
        }
        return false;
    }
}
