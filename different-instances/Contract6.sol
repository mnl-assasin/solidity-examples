pragma solidity ^0.5.8;

contract Contract6{
 // with value with 1 data owner address not saved
    string public name;
    
    constructor(string memory _name)payable public{
      require(msg.value == 10 wei,'10 wei required');    
      name = _name;
    }
    
    function setName(string memory _name)payable public {
        if(msg.value >= 10 wei){
           name = _name;
        }else
        revert();
    }
}
