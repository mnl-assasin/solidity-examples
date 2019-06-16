pragma solidity ^0.5.8;

contract Contract13{
    
   //Contract with value no data owner address is saved
    
    address public owner = msg.sender;
    string public name;
    uint public age;
    
    constructor()payable public{
        require(msg.value >= 10 wei, '10 wei required');
        owner = msg.sender;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner payable public {
     if(msg.value >= 10 wei){
       name=_name;
     }else{
         revert();
     }
    }
    
    function setAge(uint _age)onlyOwner payable public {
     if(msg.value >= 10 wei){
        age = _age;
      }else{
         revert();
      }
     }
    
    
}

