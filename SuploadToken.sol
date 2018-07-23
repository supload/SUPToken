pragma solidity ^0.4.24;

import "./StandardToken.sol";

contract SuploadToken is StandardToken {
    string public name = "SupToken";
    string public symbol = "SUP";
    uint public decimals = 18;
    uint public INITIAL_SUPPLY = 140010271 * (10 ** decimals);

    address public owner;
    address public newOwner;

    event OwnershipTransferred(address _from, address _to);

    constructor() public {
        owner = msg.sender;
        totalSupply_ = INITIAL_SUPPLY;
        balances[msg.sender] = INITIAL_SUPPLY;
        bytes memory empty;
        emit Transfer(address(0), owner, totalSupply_, empty);
    }

    modifier onlyOwner {
        require(msg.sender == owner);
        _;
    }

    function transferOwnership(address _newOwner) public onlyOwner {
        newOwner = _newOwner;
    }

    function acceptOwnership() public {
        require(msg.sender == newOwner);
        emit OwnershipTransferred(owner, newOwner);
        owner = newOwner;
        newOwner = address(0);
    }
}
