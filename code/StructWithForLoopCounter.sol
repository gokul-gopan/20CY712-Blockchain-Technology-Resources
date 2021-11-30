//SPDX-License-Identifier: GPL-3.0
/**
@author gokul
@title class with structure with counter
**/

pragma solidity >=0.7.0  <0.9.0;

contract ClassWithStruct {
    struct student {
        uint256 roll;
        string name;
        uint256 mark1;
        uint256 mark2;
        uint256 mark3;
        uint256 total;
    }
    student[10] stud;
    uint256 i = 0;
    
    function store(uint256 _roll, string memory _name, uint256 _mark1, uint256 _mark2, uint256 _mark3) public {
        stud[i].roll = _roll;
        stud[i].name = _name;
        stud[i].mark1 = _mark1;
        stud[i].mark2 = _mark2;
        stud[i].mark3 = _mark3;
        stud[i].total = _mark1 + _mark2 + _mark3;
        i = i +1;
    }

   function get(uint256 _roll) public view returns (string memory, uint256){
    uint256 i = 0;
    for (i = 0; i<=10;i++){
        if (stud[i].roll == _roll){
            return (stud[i].name, stud[i].total);
        }
    }
    
    
    }
}



