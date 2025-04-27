// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;
import './Animal.sol';

contract PetManager {
    Animal[] public pets;

    function createPet(string memory _name, uint _age, string memory _species, string memory _breed) public {
        Animal newPet = new Animal(_name, _age, _species, _breed);
        pets.push(newPet);
    }

    function getPetDetails(uint index) public view returns (
        string memory name, 
        uint age, 
        string memory species, 
        string memory breed, 
        bool adopted
    ) {
        require(index < pets.length, "Pet does not exist");

   
        Animal pet = pets[index];
        return (
            pet.name(),  
            pet.age(),    
            pet.species(),
            pet.breed(),  
            pet.adopted() 
        );
    }

    function adoptPet(uint petIndex) public {
        require(petIndex < pets.length, "Pet does not exist");
        Animal pet = pets[petIndex];
        pet.adopt();
    }

    function updatePetHealth(uint petIndex, bool _health) public {
        require(petIndex < pets.length, "Pet does not exist");
        Animal pet = pets[petIndex];
        pet.updateHealth(_health);
    }
}
