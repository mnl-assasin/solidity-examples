pragma solidity ^0.5.8;

contract Contract14{
    
    // with value with data owner address is saved
    address public owner;
    string public name;
    
    constructor(string memory _name)payable public{
      require(msg.value >= 10 wei, '10 wei required');
      owner = msg.sender;
      name = _name;
    }
    
    modifier onlyOwner{
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner payable public {
        if(msg.value >= 20 wei){
            name = _name;
        }else{
            revert();
        }
    }
}
