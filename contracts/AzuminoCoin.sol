pragma solidity ^0.4.24;

import "openzeppelin-solidity/contracts/token/ERC20/ERC20Mintable.sol";

contract AzuminoCoin is MintableToken {
   string public name = "AZUMINO COIN";
   string public symbol = "AZC";
   uint8 public decimals = 18;
}
