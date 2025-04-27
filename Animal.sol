// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;


contract Animal{

    string public name;
    uint public age;
    bool public adopted;
    bool private health;
    string public species;
    string public breed;
    address private admin;
    address public owner;

    constructor( string memory _name, uint _age, string memory _species, string memory _breed){
        name =_name;
        age=_age;
        species = _species;
        breed = _breed;
        adopted = false;
        health = true;
        admin = msg.sender;
        
    }

    function adopt () public {   
        require(adopted == false, "Pet already adopted");
        require(health == true , "Pet is dead");
        owner = msg.sender;
        adopted = true;
    }

    function updateHealth(bool  _health) public {
        require(msg.sender == admin, "only admin can update health");
        health = _health;
    }

}
