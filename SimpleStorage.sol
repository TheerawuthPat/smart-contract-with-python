// SPDX-License-Identifier: MIT
pragma solidity ^0.8.7;
contract SimpleStorage {
    uint256 favoriteNumber = 5;
    struct People {
        uint256 favoriteNumber;
        string name;
    }

    mapping(string => uint256) public nameToFavoriteNumber;
    People[] public people;

    function store(uint256 _favNumber) public {
        favoriteNumber = _favNumber;
    }

    function retrieve() public view returns(uint256) {
        return favoriteNumber;
    }
    
    function addPerson(uint256 _favoriteNumber, string memory _name) public {
        people.push(People({favoriteNumber: _favoriteNumber, name:_name}));
        nameToFavoriteNumber[_name] = _favoriteNumber;
    }
}