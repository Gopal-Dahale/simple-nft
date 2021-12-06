// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

import "@openzeppelin/contracts/token/ERC721/extensions/ERC721URIStorage.sol";


contract SimpleNFT is ERC721URIStorage {
    uint256 public counter_tok;

    constructor() ERC721("SimpleNFT", "NFT") {
        counter_tok = 0;
    }

    function mint(string memory tokenURI) public returns (uint256)
    {
        uint256 new_item_id = counter_tok;
        _safeMint(msg.sender, new_item_id);
        _setTokenURI(new_item_id,tokenURI);
        counter_tok += 1;
        return new_item_id;
    }
}
