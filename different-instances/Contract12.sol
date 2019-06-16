pragma solidity ^0.5.8;

contract Contract12{
    
    //Contract no value with 3 data (multiple data type) owner address is saved
    address public owner;
    string public name;
    uint public age;
    bool public employed;
    
    constructor(string memory _name, uint _age, bool _employed)public{
        name = _name;
        age = _age;
        employed = _employed;
        owner = msg.sender;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner public {
        name = _name;
    }
    
    function setAge(uint _age)onlyOwner public {
        age = _age;
    }
    
     function setEmployed(bool _employed)onlyOwner public {
        employed = _employed;
    }
}

