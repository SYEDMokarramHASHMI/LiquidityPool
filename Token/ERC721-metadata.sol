// SPDX-License-Identifier: MIT
pragma solidity ^0.8.0;

/**
 * @dev Optional metadata extension for ERC-721 non-fungible token standard.
 * See https://github.com/ethereum/EIPs/blob/master/EIPS/eip-721.md.
 */
interface ERC721Metadata
{

  function name() external view returns (string memory _name);


  function symbol() external view returns (string memory _symbol);


  function tokenURI(uint256 _tokenId) external view returns (string memory);

}
