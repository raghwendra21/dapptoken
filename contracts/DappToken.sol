pragma solidity ^0.4.2;

contract DappToken {
    //Constructor
    //Set the total number of tokens
    //Name
    string public name ="Dapp Token";
    string public symbol ="DAPP";
    string public standard ="Dapp Token v1.0";
    //Symbol
    uint256 public totalSupply;

    event Transfer(
        address indexed _from,
        address indexed _to,
        uint _value
    );

    mapping(address => uint256)public balanceOf;

    //Read the total number of tokens
    function DappToken(uint256 _initialSupply) public{
        balanceOf[msg.sender] = _initialSupply;
        totalSupply = _initialSupply;
        //allocate the initial supply
    }
    //Transfer
    //Exception if account doesn't have enough balance
    //Return bool
    //Transfer event
    function transfer(address _to, uint256 _value) public returns(bool success){
          //Exception if account doesn't have enough balance
        require(balanceOf[msg.sender] >= _value);
          //Transfer the balance
        balanceOf[msg.sender] -= _value;
        balanceOf[_to] += _value;  
         //Return bool
        //Transfer event

        Transfer(msg.sender, _to, _value);
        return true;

        

    }
    
}