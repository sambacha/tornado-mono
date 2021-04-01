// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <0.8.0;

import "../OZ/contracts/token/ERC20/ERC20.sol";
import "../OZ/contracts/token/ERC20/ERC20Mintable.sol";
import "../OZ/contracts/token/ERC20/ERC20Detailed.sol";

contract ERC20Mock is ERC20Detailed, ERC20Mintable {
  constructor() ERC20Detailed("DAIMock", "DAIM", 18) public {
  }
}
