pragma solidity ^0.4.4;

import "zeppelin-solidity/contracts/token/StandardToken.sol";

contract SpeedwayBricks is StandardToken {

  string public constant name = "SpeedwayBricks";
  string public constant symbol = "BRKS";
  uint8 public constant decimals = 18;

  uint256 public constant INITIAL_SUPPLY = 10000 * (10 ** uint256(decimals));

  /**
   * @dev Constructor that gives msg.sender all of existing tokens.
   */
  function SimpleToken() public {
    totalSupply = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    Transfer(0x0, msg.sender, INITIAL_SUPPLY);
  }

}
