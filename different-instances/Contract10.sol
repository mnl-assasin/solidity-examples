pragma solidity ^0.5.8;

contract Contract10{
 //Contract no value with data owner address is saved
    
    string public name;
    address public owner;
    
    constructor(string memory _name) public {
        owner = msg.sender;
        name = _name;
        owner = msg.sender;
    }
    
    modifier onlyOwner{
     require(msg.sender == owner);
     _;
    }
    
    function setName(string memory _name) onlyOwner public {
           name = _name;
    }
    function getOwner() public view returns (address){
        return owner;
    }
    
    
}

