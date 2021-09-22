pragma solidity ^0.8.3;
contract add{
    uint8 public a=20;
    uint8 public b=30;
    uint8 public result;
    
    function findSum() public{
        result = a+b;
    }
}
