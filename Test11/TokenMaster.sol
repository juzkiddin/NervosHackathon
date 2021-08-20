// SPDX-License-Identifier: MIT
pragma solidity >=0.8.0;

contract TokenMaster {
  uint256 TokenCount;

  constructor() payable {
    TokenCount = 1000;
  }
  
  function add(uint256 a, uint256 b) internal pure returns (uint256) {
      return a + b;
  }
  
  function sub(uint256 a, uint256 b) internal pure returns (uint256) {
      require(a>=b);
      return a - b;
  }
  
  function burn(uint x) public payable {
    TokenCount = sub(TokenCount,x);
  }
  
  function mint(uint x) public payable {
    TokenCount = add(TokenCount,x);
  }
  
  function getBal() public view returns (uint) {
    return TokenCount;
  }
}
