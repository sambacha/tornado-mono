
//         ,----,                                                        
//       ,/   .`|                                                        
//     ,`   .'  :                               ___                      
//   ;    ;     /            ,--,             ,--.'|_                    
// .'___,/    ,'       .---,--.'|             |  | :,'           __  ,-. 
// |    :     |       /. ./|  |,     .--.--.  :  : ' :         ,' ,'/ /| 
// ;    |.';  ;    .-'-. ' `--'_    /  /    .;__,'  /    ,---. '  | |' | 
// `----'  |  |   /___/ \: ,' ,'|  |  :  /`.|  |   |    /     \|  |   ,' 
//     '   :  ;.-'.. '   ' '  | |  |  :  ;_ :__,'| :   /    /  '  :  /   
//     |   |  /___/ \:     |  | :   \  \    `.'  : |__.    ' / |  | '    
//     '   :  .   \  ' .\  '  : |__  `----.   |  | '.''   ;   /;  : |    
//     ;   |.' \   \   ' \ |  | '.'|/  /`--'  ;  :    '   |  / |  , ;    
//     '---'    \   \  |--";  :    '--'.     /|  ,   /|   :    |---'     
//               \   \ |   |  ,   /  `--'---'  ---`-'  \   \  /          
//                '---"     ---`-'                      `----'           
                                                                      


// SPDX-License-Identifier: MIT
pragma solidity >0.6.0 <0.8.0;

import "./Tornado.sol";

contract ETHTornado is Tornado {
  constructor(
    IVerifier _verifier,
    uint256 _denomination,
    uint32 _merkleTreeHeight,
    address _operator
  ) Tornado(_verifier, _denomination, _merkleTreeHeight, _operator) {
  }

  function _processDeposit() override internal {
    require(msg.value == denomination, "Please send `mixDenomination` ETH along with transaction");
  }

  function _processWithdraw(address payable _recipient, address payable _relayer, uint256 _fee, uint256 _refund) override internal {
    // sanity checks
    require(msg.value == 0, "Message value is supposed to be zero for ETH instance");
    require(_refund == 0, "Refund value is supposed to be zero for ETH instance");

    (bool success, ) = _recipient.call{value: denomination - _fee}("");
    require(success, "payment to _recipient did not go thru");
    if (_fee > 0) {
      (success, ) = _relayer.call{value: _fee}("");
      require(success, "payment to _relayer did not go thru");
    }
  }
}
