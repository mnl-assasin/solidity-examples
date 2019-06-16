pragma solidity ^0.5.8;

contract Contract9{
    //Contract without value no data owner address is saved
    string public name;
    address public owner;
    
    constructor()public{
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner public{
        name = _name;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
}

