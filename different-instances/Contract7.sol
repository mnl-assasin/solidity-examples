pragma solidity ^0.5.8;

contract Contract7{
    
 //with value with 2 data (same data type) owner address not saved
    
    string public name;
    string public nickname;
    
    constructor(string memory _name, string memory _nickname)payable public{
      require(msg.value == 10 wei,'10 wei required');   
      name = _name;
      nickname = _nickname;
    }
    
    function setName(string memory _name)payable public {
        if(msg.value >= 20 wei){
           name = _name;
        }else
        revert();
    }
    
    function setNickName(string memory _nickname)payable public {
        if(msg.value >= 20 wei){
           nickname = _nickname;
        }else
        revert();
    }
}
