# avax error handlers

This Solidity program is a "avax error handler" program that demonstrates the error handlers of the Solidity programming language. In the video the working of error handlers is shown in both case true and false.

## Description

- checkEligibility: This function takes an age as input and checks if the person is eligible to vote. It requires that the age is 18 or older. If the age is less than 18, it raises a "Not Eligible" error message; otherwise, it returns "Eligible to vote".

- checkIfVoted: This function checks whether a person has already voted. It takes a boolean parameter voted indicating whether the person has voted or not. If voted is true (indicating the person has already voted), the function reverts with the error message "You cannot vote twice". If voted is false, indicating the person hasn't voted, it returns true.

- checkVoterId: This function checks if the voter has a valid voter ID. It takes a boolean parameter voterid. It uses an assert statement to ensure that voterid is true. If voterid is true, indicating a valid voter ID, it returns "You can proceed to the designated booth".
## Getting Started

### Executing program

To run this program, you can use Remix, an online Solidity IDE. To get started, go to the Remix website at https://remix.ethereum.org/.

Once you are on the Remix website, create a new file by clicking on the "+" icon in the left-hand sidebar. Save the file with a .sol extension (e.g., avax_error.sol). Copy and paste the following code into the file:

```javascript
//SPDX-License-Identifier:MIT
pragma solidity ^0.8.18;
contract avax_error{
    function checkEligibility(uint _age)public pure returns (string memory){
        require(_age>=18,"Not Eligible");
        return "Eligible to vote";
    } 
    function checkIfVoted(bool voted)public pure returns(bool){
        if(voted==true){
            revert("You cannot vote twice");
        }else {
            return true;
        }
    }
    function checkVoterId(bool voterid)public pure returns(string memory){
        assert(voterid==true);
        return "You can proceed to the designated booth";
        }
}

```


To compile the code, click on the "Solidity Compiler" tab in the left-hand sidebar. Make sure the "Compiler" option is set to "0.8.18" (or another compatible version), and then click on the "Compile avax_error.sol" button.

Once the code is compiled, you can deploy the contract by clicking on the "Deploy & Run Transactions" tab in the left-hand sidebar. Select the "avax_error.sol" contract from the dropdown menu, and then click on the "Deploy" button.


## Authors

U SRIRAM

usriram186@gmail.com


## License

This project is licensed under the MIT License - see the LICENSE.md file for details
