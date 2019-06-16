pragma solidity ^0.5.8;

contract Contract2{
    
   // no value With 1 data owner address not saved

    string public name;
    
    constructor(string memory _name)public{
        name = _name;
    }
    
    function setName(string memory _name)payable public {
            name = _name;
    }
    
    
    
}
