pragma solidity ^0.5.8;

contract Contract5{
    
  //Contract  with value no data owner address not saved
    string public name;
    
    constructor()payable public {
        require(msg.value >= 10 wei,'10 wei required');
    }

    function setName(string memory _name) payable public {
       if(msg.value == 10 wei){    
       name=_name;
       }else
       revert();
    }
    
}

