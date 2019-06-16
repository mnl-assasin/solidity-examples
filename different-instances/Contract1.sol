pragma solidity ^0.5.8;

contract Contract1{
    //Contract with value without constructor
    string public name;
    
    function setName(string memory _name)public{
        name = _name;
    }

}

