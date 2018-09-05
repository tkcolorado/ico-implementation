pragma solidity ^0.4.24;

import "../node_modules/openzeppelin-solidity/contracts/token/ERC20/MintableToken.sol";

contract AzuminoCoin is MintableToken {
   string public name = "AZUMINO COIN";
   string public symbol = "AZC";
   uint8 public decimals = 18;
}
