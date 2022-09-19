// SPDX-License-Identifier: MIT
// OpenZeppelin Contracts (last updated v4.7.0) (token/ERC1155/ERC1155.sol)

pragma solidity ^0.8.0;

 import "@openzeppelin/contracts/token/ERC1155/ERC1155.sol";
 import "@openzeppelin/contracts/access/Ownable.sol";

contract NftContract is ERC1155 ,Ownable
{
  uint256 tokenCount;    
  constructor (string memory uri_) ERC1155 (uri_){}


  function mint (uint256 amount) public onlyOwner
  {
      tokenCount++;  
      _mint(_msgSender() ,tokenCount , amount, "");
  }


  function mintBatch (uint256 [] memory ids ,uint256 [] memory amounts,bytes memory data ) public 
  { 
        _mintBatch(_msgSender() , ids, amounts, data);
  }
  

}