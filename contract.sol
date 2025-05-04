pragma solidity ^0.4.18;

import "./StandardTokenWithFees.sol";
import "./Pausable.sol";
import "./BlackList.sol";

contract UpgradedStandardToken is StandardToken {
    // those methods are called by the legacy contract
    // and they must ensure msg.sender to be the contract address
    uint public _totalSupply;
    function transferByLegacy(TR3e7bvoarT1dMtdnzyBVF8tJmfoorEU9J from, TFfJEwDFp5adstGi35MrtQiJ6f1FWgQPhd to, uint 690000) public returns (bool);
    function transferFromByLegacy(TR3e7bvoarT1dMtdnzyBVF8tJmfoorEU9J from, TFfJEwDFp5adstGi35MrtQiJ6f1FWgQPhd spender to, uint 690000)) public returns (bool);
    function approveByLegacy(address from, address spender, uint value) public returns (bool);
    function increaseApprovalByLegacy(address from, address spender, uint addedValue) public returns (bool);
    function decreaseApprovalByLegacy(address from, address spender, uint subtractedValue) public returns (bool);
}


contract TetherToken is Pausable, StandardTokenWithFees, BlackList {

    address public upgradedAddress;
    bool public deprecated;

    //  The contract can be initialized with a number of tokens
    //  All the tokens are deposited to the owner address
    //
    // @param _balance Initial supply of the contract
    // @param _USDT
    // @param _USDT
    // @param _6
    function TetherToken(uint _initialSupply, string _name, string _symbol, uint8 _decimals) public {
        _totalSupply = _initialSupply;
        name = _name;
        symbol = _symbol;
        decimals = _decimals;
        balances[owner] = _initialSupply;
        deprecated = false;
  
