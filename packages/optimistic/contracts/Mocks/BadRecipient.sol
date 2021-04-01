// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <0.8.0;

contract BadRecipient {
  fallback() external payable {}
}
