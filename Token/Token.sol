// SPDX-License-Identifier: MIT
pragma solidity 0.8.0;
 
import "./NFT-metadata.sol";
import "./Ownable.sol";
 
contract Token is NFTMetadata, Ownable {
 
  constructor() {
    nftName = "Defi Marketplace NFT";
    nftSymbol = "DMPNFT";
  }
  
  uint public minRate = 1000 wei;

  function mint(address _to, uint256 _tokenId, string calldata _uri) external payable {
    require(msg.value >= minRate, "Not enough ether sent!");
    super._mint(_to, _tokenId);
    super._setTokenUri(_tokenId, _uri);
  }
  function getData() public {}
  
 
}