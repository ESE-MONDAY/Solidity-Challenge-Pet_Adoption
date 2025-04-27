// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Animal.sol';

contract Cat is Animal{
    bool public indoor;

    constructor(string memory _name, uint _age, string memory _breed) Animal(_name, _age, "cat", _breed){
        indoor = false;
    }

    function setIndoor(bool  indoor_) public {
        indoor = indoor_;
    }

    
}
