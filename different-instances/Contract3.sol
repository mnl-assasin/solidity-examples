pragma solidity ^0.5.8;

contract Contract3{
    
   //with - No value  With 2 data (same data type) owner address not saved

    string public name;
    string public nickname ;
    
    constructor(string memory _name ,string memory _nickname)public{
        name = _name;
        nickname = _nickname;
    }
    
    function setName(string memory _name)payable public {
            name = _name;
    }
    
    function setNickName(string memory _nickname)payable public {
            nickname = _nickname;
    }
}

