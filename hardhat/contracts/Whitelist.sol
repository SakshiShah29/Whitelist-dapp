//SPDX-License-Identifier:MIT
pragma solidity ^0.8.0;
contract Whitelist{
    //max number of addresses to be whitelisted
    uint public maxNumbeOfWhitelistAddresses;

    //mapping to assure if the address is whitelisted
    mapping(address=>bool) public  whitelistedAddresses;

    uint public numberOfWhitelistAddresses;

    constructor(uint _maxNoWhiteListAddress){
        maxNumbeOfWhitelistAddresses=_maxNoWhiteListAddress;
    }

    function whitelist() public{
        require(!whitelistedAddresses[msg.sender],"The user is already whitelisted!");
        require(numberOfWhitelistAddresses<maxNumbeOfWhitelistAddresses,"The max number addresses to be whitelisted has reached!");
        numberOfWhitelistAddresses+=1;
        whitelistedAddresses[msg.sender]=true;
    }

}
