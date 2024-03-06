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
