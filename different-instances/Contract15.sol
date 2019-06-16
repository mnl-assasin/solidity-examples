pragma solidity ^0.5.8;

contract Contract15{
    
   //with value with 2 data (same data type) owner address is saved
    address public owner;
    string public name;
    string public gender;
    
    constructor(string memory _name , string memory _gender)payable public{
        require(msg.value >= 10 wei, '10 wei required');
        owner = msg.sender; 
        name = _name;
        gender = _gender;
    }
    
     modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner payable public {
        if(msg.value >= 10 wei){
            name = _name;
        }else{
            revert();
        }
    }
    
    function setGender(string memory _gender)onlyOwner payable public {
        if(msg.value >= 10 wei){
            gender = _gender;
        }else{
            revert();
        }
    }
}
