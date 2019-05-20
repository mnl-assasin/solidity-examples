pragma solidity^0.5.8;

contract BasicContract{
    string name;
    int age;
    bool isEmployed;
    
    function setPerson(string memory _name, int _age, bool _isEmployed) public {
        name = _name;
        age = _age;
        isEmployed = _isEmployed;
    }
    
    function setNameAge(string memory _name, int _age) public {
        name = _name;
        age = _age;
    }
    
    function setName(string memory _name) public {
        name = _name;
    }
    
    function setAge(int _age) public {
        age =_age;
    }

    function setEmployed(bool _isEmployed) public{
        isEmployed = _isEmployed;
    }
    
    function getName() public view returns(string memory){
        return name;
    }
    
    function getAge() public view returns(int){
        return age;
    }
    
    function isPersonEmployed() public view returns(bool){
        return isEmployed;
    }
    
    function addAge(int _age) public returns(int){
        age+= _age;
        return age;
    }
}