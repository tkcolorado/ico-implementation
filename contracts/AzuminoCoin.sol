pragma solidity 0.4.24;

import "github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/token/ERC20/ERC20Mintable.sol";

contract AzuminoCoin is MintableToken {
   string public name = "AZUMINO COIN";
   string public symbol = "AZC";
   uint8 public decilmals = 18;
}
