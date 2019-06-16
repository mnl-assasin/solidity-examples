pragma solidity ^0.5.8;

contract Contract4{
    
   //Contract No value With 3 data (multiple data type) owner address not saved
    
    string public name;
    uint public age;
    bool public employed;
    
    constructor(string memory _name,uint _age, bool _employed)public{
        name = _name;
        age = _age;
        employed = _employed;
    }
    
    function setName(string memory _name)public {
        name = _name;
    }
    
    function setAge(uint _age)public {
        age = _age;
    }
    
    function setEmployed(bool _employed)public {
        employed = _employed;
    }
}

