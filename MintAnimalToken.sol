// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
import "@openzeppelin/contracts/utils/Counters.sol";

contract MintAnimalToken is ERC721Enumerable {
    constructor() ERC721("yunoimAnimalToken", "YAT") {}

    function mintAnimalToken() public {
        uint256 animalTokenId = totalSupply() + 1;

        _mint(msg.sender, animalTokenId);
    }
}
}