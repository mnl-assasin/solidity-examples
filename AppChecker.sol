pragma solidity 0.5.8;

contract AppChecker {
   
   address public owner;
   mapping(address => App) public owners;
   mapping(string => bool) public isExist;
   App public private_app;

   
   struct App{
       string packageName;
       uint versionCode;
       bool isRequired;
   }
   
   constructor()public {
       owner = msg.sender;
   }
   
    modifier onlyOwner {
         require(msg.sender == owner);   
         _; 
    }


   function addApp(string memory _packageName, uint _versionCode, bool _isRequired)public onlyOwner {
       if(isExist[_packageName]){
           revert();
       }
       else
       {
       owner = msg.sender;
       owners[owner] = App(_packageName,_versionCode,_isRequired);
       isExist[_packageName] = true;
       }
   }
   
   function updateApp(string memory _packageName,uint _versionCode, bool _isRequired)public onlyOwner{
       private_app.packageName = _packageName;
       private_app.versionCode = _versionCode;
       private_app.isRequired = _isRequired;
       owners[msg.sender] = private_app;
   }
   
   function isUpdateRequired(string memory _packageName, uint versionCode) public view returns(bool){
       if(isExist[_packageName]){
           bool required = owners[msg.sender].isRequired;
           uint contractVersion = owners[msg.sender].versionCode;
           return(required && versionCode < contractVersion);
       }else{
           revert();
       }
   }
   
   function getVersion(string memory _packageName) public view returns(uint) {
    require(msg.sender == owner);
    if(isExist[_packageName]){
       return owners[msg.sender].versionCode;
    }
  }
  
  function getApp(address _address)public view returns(string memory,uint,bool){
    string memory owns =  owners[_address].packageName;
    uint version =  owners[_address].versionCode;
    bool required =  owners[_address].isRequired;
    
    return (owns,version,required);
    }
  
  function deleteApp(string memory _packageName)onlyOwner public{
       if(isExist[_packageName]){
        delete(owners[owner]);
        isExist[_packageName] = false;
       }else{
           revert();
       }
  }
}