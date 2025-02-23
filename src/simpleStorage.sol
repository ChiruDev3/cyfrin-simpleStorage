// SPDX-License-Identifier: MIT
pragma solidity ^0.8.28;

contract SimpleStorage {
    uint256 myFavourateNumber;

    struct Person {
        uint256 favourateNumber;
        string name;
    }

    Person[] public listOfPeople;
    mapping(string name => uint256 favourateNumber) public nameToFavourateNumber;

    function store(uint256 _favourteNumber) public {
        myFavourateNumber = _favourteNumber;
    }

    function addPerson(string memory _name, uint256 _favourateNumber) public {
        listOfPeople.push(Person(_favourateNumber, _name));
        nameToFavourateNumber[_name] = _favourateNumber;
    }

    function retrive() public view returns (uint256) {
        return myFavourateNumber;
    }
    function retrive2() public pure returns(uint256){
        return 7;
    }
}
