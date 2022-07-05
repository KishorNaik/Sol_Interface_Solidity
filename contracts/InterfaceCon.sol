
//SPDX-License-Identifier: Unlicense
pragma solidity ^0.8.0;

import "hardhat/console.sol";

interface IInterfaceDemo{
   function setValue(uint _value1,uint _value2) external;
   function addValue() external view returns(uint);
}

contract InterfaceCon is IInterfaceDemo{

   uint private value1;
   uint private value2;

   function setValue(uint _value1,uint _value2) override external{
      value1=_value1;
      value2=_value2;
   }

   function addValue() external override view returns(uint){
      return value1 + value2; 
   }
}

