pragma solidity 0.4.24;

import './AzuminoCoin.sol';
import 'github.com/OpenZeppelin/openzeppelin-solidity/blob/master/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'openzeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';

contract AzuminoCoinCrowdsale is TimedCrowdsale, MintedCrowdsale {
  function AzuminoCoinCrowdsale
    (
      uint256 _openingTime,
      uint256 _closingTime,
      uint256 _rate,
      address _wallet,
      MintableToken _token
    )
    public
    Crowdsale(_rate, _wallet, _token)
    TimedCrowdsale(_openingTime, _closingTime) {
      
    }
}
