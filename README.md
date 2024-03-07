# avax error handlers

This Solidity program is a "avax error handler" program that demonstrates the error handlers of the Solidity programming language. In the video the working of error handlers is shown in both case true and false.

## Description

The avax_error contract consists of the following components:

- State Variables:

uint public total_supply;: This variable represents the total supply of tokens and is publicly accessible.
address owner;: This variable holds the address of the contract owner.
- Constructor:

The constructor initializes the total_supply variable with the value passed as _totalsupply. It also sets the owner variable to a specific Ethereum address (0x5B38Da6a701c568545dCfcB03FcB875f56beddC4).
- Modifier:

onlyOwner: This modifier restricts access to certain functions to only the contract owner. It verifies whether the caller of the function is the owner before allowing the function to proceed.
- Functions:

increase_supply(uint byValue) public onlyOwner: This function allows the owner to increase the total token supply by the specified amount (byValue). It ensures that the total supply is greater than zero using assert. If the new total supply exceeds 10000, the function reverts the transaction with an error message.
giveAccess(address _address) public: This function allows the contract owner to grant access to specific addresses within the community. It checks whether the provided address is one of three predetermined addresses. If it is, the function sets that address as the new owner.
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., avax_error.sol). Copy and paste the following code into the file:

```javascript
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

```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.0" (or another compatible version), and then click on the "Compile avax_error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "avax_error.sol" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

U SRIRAM

usriram186@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
