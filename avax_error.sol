//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;

contract avax_error{
    uint public total_supply;
    address owner;

    constructor(uint _totalsupply){
        total_supply=_totalsupply;
       owner=0x5B38Da6a701c568545dCfcB03FcB875f56beddC4;
    }
    modifier onlyOwner{
        require(msg.sender==owner,"Only Owner can call the function");
        _;
    }
    function increase_supply(uint byValue)public onlyOwner{
        assert(total_supply>0);
        total_supply+=byValue;
        if(total_supply>10000){
            revert("Transaction Failed:You cannot exceed the maximum total supply-10000");
        }
    }

    function giveAccess(address _address) public{
    require(
        _address == 0xAb8483F64d9C6d1EcF9b849Ae677dD3315835cb2 ||
        _address == 0x4B20993Bc481177ec7E8f571ceCaE8A9e22C02db ||
        _address == 0x78731D3Ca6b7E34aC0F824c42a7cC18A495cabaB,
        "Cannot give access to addresses outside the community"
    );
    owner=_address;
}
}
