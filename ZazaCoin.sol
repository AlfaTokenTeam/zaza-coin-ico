pragma solidity ^0.4.12;

import "./lib/BurnableToken.sol";
import "./lib/UpgradeableToken.sol";

contract ZazaCoin is BurnableToken, UpgradeableToken {

  string public name;
  string public symbol;
  uint public decimals;

  function ZazaCoin(address _owner)  UpgradeableToken(_owner) {
    name = "ZazaCoin";
    symbol = "ZAZ";
    totalSupply = 10000000000000000000000000;
    decimals = 18;

    balances[_owner] = totalSupply;
  }
}