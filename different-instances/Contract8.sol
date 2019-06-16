pragma solidity ^0.5.8;

contract Contract8{
    
   //with value with 3 data (multiple data type) owner address not saved
   

    string public name;
    uint public age;
    bool employed;
    
    constructor(string memory _name , uint _age, bool _employed) payable public{
        require(msg.value == 10 wei,'10 wei required');   
        name = _name;
        age = _age;
        employed = _employed;
    }
    
    function setName(string memory _name)payable public {
        if(msg.value >= 20 wei){
            name = _name;
        }else{
            revert();
        }
    }
    
    
    function setAge(uint _age)payable public {
        if(msg.value >= 20 wei){
            age = _age;
        }else{
            revert();
        }
    }
    
    function setEmployed(bool _employed)payable public {
        if(msg.value >= 20 wei){
           employed = _employed;
        }else{
            revert();
        }
    }
    
}
