pragma solidity ^0.5.8;

contract Contract16{
    
    
      // with value with 3 data (multiple data type) owner address is saved
    
    address public owner;
    string public name;
    uint public age;
    bool employed;
    
    constructor(string memory _name , uint _age, bool _employed)payable public{
        require(msg.value >= 10 wei,'10 wei required');
        owner = msg.sender;
        name = _name;
        age = _age;
        employed = _employed;
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
    
    
    function setAge(uint _age)onlyOwner payable public {
        if(msg.value >= 10 wei){
            age = _age;
        }else{
            revert();
        }
    }
    
    function setEmployed(bool _employed)onlyOwner payable public {
        if(msg.value >= 20 wei){
           employed = _employed;
        }else{
            revert();
        }
    }
}
