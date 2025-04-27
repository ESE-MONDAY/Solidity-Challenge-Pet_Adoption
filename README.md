

# 🐾 Pet Adoption dApp

A decentralized app where users can adopt pets — organized around real-world Object-Oriented Programming concepts like **Inheritance**, **Encapsulation**, and **Instance Management**.

---

## ✨ Features

✅ **Animal Contract** — Base blueprint defining core pet attributes:  
&nbsp;&nbsp;&nbsp;&nbsp;• Name, Age, Breed, Species  
&nbsp;&nbsp;&nbsp;&nbsp;• Adoption status  
&nbsp;&nbsp;&nbsp;&nbsp;• Health status (encapsulated)

✅ **Dog and Cat Contracts** — Specialized contracts that **inherit** from Animal:  
&nbsp;&nbsp;&nbsp;&nbsp;• `Cat` adds an `indoor` feature  
&nbsp;&nbsp;&nbsp;&nbsp;•  `Dog` can have `isTrained` or other dog-specific features.

✅ **Pets Contract** —  
Acts as a **Pet Manager**:  
&nbsp;&nbsp;&nbsp;&nbsp;• Deploys and tracks all pet instances (Animals, Cats, Dogs)  
&nbsp;&nbsp;&nbsp;&nbsp;• Anyone can view the list of available pets for adoption.  
&nbsp;&nbsp;&nbsp;&nbsp;• Admin can add new pets.

✅ **Encapsulation** —  
Only the pet **admin** can update health information, keeping internal data secure.

✅ **Instances** —  
Each pet is a **real object** (instance) stored on-chain!

---

## 📜 Contracts Structure

- `Animal.sol`: Base class contract (core attributes and behavior)
- `Cat.sol`: Inherits from Animal with cat-specific features
- `Dog.sol` : Inherits from Animal with dog-specific features
- `Pets.sol`: **Factory and Registry** that manages all pet instances (Animals, Cats, Dogs)

---

## 🛠 How It Works

1. **Admin** can create new Cats or Dogs through the Pets contract.
2. **Pets contract** keeps a list (`Animal[] public pets`) of all deployed pet instances.
3. **Users** can browse available pets and adopt if they are healthy and not yet adopted.
4. **Only the Pet Creator** (admin) can modify the pet's health.

---

## 🚀 Tech Stack

- Solidity `^0.8.0`
- Hardhat / Foundry / Remix for local testing and deployment
- OpenZeppelin (optional for access control improvements)

---

## 📈 Learning Goals

- ✅ Practice Inheritance, Encapsulation, and Factory Patterns
- ✅ Understand real-world smart contract architecture
- ✅ Work with Contract Deployment from another Contract (i.e., Factory creating Instances)
- ✅ Manage gas efficiently and securely when dealing with arrays of contract addresses

---

## 📚 Next Steps (Stretch Goals)

- Add adoption fees (payable `adopt()` function)
- Build a Frontend UI to view, add, and adopt pets
- Integrate Role-Based Access Control (RBAC) using OpenZeppelin's `AccessControl`
- Expand pet types beyond Dogs and Cats (birds, rabbits, etc.)



