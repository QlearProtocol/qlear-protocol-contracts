pragma solidity 0.4.24;

import './zeppelin/lifecycle/Destructible.sol';
import './zeppelin/ownership/HasNoEther.sol';
import './zeppelin/ownership/HasNoContracts.sol';
import './zeppelin/token/ERC20/TokenVesting.sol';

/**
 * @title QlearTokenVesting
 * @dev Extends TokenVesting contract to allow reclaim ether and contracts, if transfered to this by mistake.
 */
contract QlearTokenVesting is TokenVesting, HasNoEther, HasNoContracts, Destructible {

    /**
     * @dev Call consturctor of TokenVesting with exactly same parameters
     */
    constructor(address _beneficiary, uint256 _start, uint256 _cliff, uint256 _duration, bool _revocable) 
                TokenVesting(        _beneficiary,         _start,         _cliff,         _duration,      _revocable) public {}

}