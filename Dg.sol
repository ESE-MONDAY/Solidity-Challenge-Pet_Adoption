// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Animal.sol';

contract Dog is Animal{
    bool public isTrained;

    constructor(string memory _name, uint _age, string memory _breed) Animal(_name, _age, "dog", _breed){
        isTrained = false;
    }

    function setIsTrained(bool  isTrained_) public {
        isTrained = isTrained_;
    }

    
}
