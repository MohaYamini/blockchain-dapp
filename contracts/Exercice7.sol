// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

abstract contract Forme {
    function surface() public view virtual returns (uint);
}

contract Carre is Forme {
    uint private cote;

    constructor(uint _cote) {
        cote = _cote;
    }

    function surface() public view override returns (uint) {
        return cote * cote;
    }
}

contract Cercle is Forme {
    uint private rayon;
    uint private constantePI = 314; 

    constructor(uint _rayon) {
        rayon = _rayon;
    }

    function surface() public view override returns (uint) {
        return (constantePI * rayon * rayon) / 100;
    }
}
