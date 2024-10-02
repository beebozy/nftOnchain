// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;


import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";
//import "@openzeppelin/contracts/utils/Counters.sol";

contract MetaDataNFT is ERC721URIStorage {
    //using Counters for Counters.Counter;
    uint private _tokenIds;

    constructor() ERC721("MetaDataNFTV2", "MDNFT2") {}

    function mint(string memory tokenURI) public returns (uint256){
        _tokenIds++;

        uint256 newItemId = _tokenIds;
        _safeMint(msg.sender, newItemId);
        _setTokenURI(newItemId, tokenURI);

        return newItemId;
    }
}