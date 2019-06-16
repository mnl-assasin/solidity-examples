pragma solidity ^0.5.8;

contract Contract11{
    
    //no value with 3 data (multiple data type) owner address is saved
    string public name;
    string public nickname;
    
    address public owner = msg.sender;
    
     constructor(string memory _name, string memory _nickname) public {
        owner = msg.sender;
        name = _name;
        nickname = _nickname;
    }
    
    modifier onlyOwner(){
        require(msg.sender == owner);
        _;
    }
    
    function setName(string memory _name)onlyOwner public{
        name = _name;
    }
    
    function setNickName(string memory _nickname)onlyOwner public{
        nickname = _nickname;
    }
    
    function getOwner() public view returns(address){
        return owner;
    }
    
}

