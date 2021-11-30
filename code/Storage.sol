//SPDX-License-Identifier: GPL-3.0
pragma solidity >=0.7.0  <0.9.0;


/**
* @title storage example
* @author gokul
* @dev store and retreive a student's details
**/
contract Storage {
    uint256 number;
    string name;

    function store(uint256 _num, string memory _name) public {
        number = _num;
        name = _name;
    }

    function retrieve () public view returns (uint256, string memory) {
        return (number, name);

    }
}



