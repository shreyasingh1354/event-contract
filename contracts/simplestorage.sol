pragma solidity ^0.6.0;

contract simplestorage {
    uint256 public favNumber;
    string name;

    function storeValue(uint256 _favNumber)public{
         favNumber = _favNumber;
    }
    function storeValue2(uint256 _string)public{
        name=  _string;
    }