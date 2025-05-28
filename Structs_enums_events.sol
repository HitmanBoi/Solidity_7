// SPDX-License-Identifier: MIT
pragma solidity ^0.8.26;

contract AdvancedFeatures{
    //Define a struct for a voter
    struct Voter {
        uint weight;
        bool voted;
        address delegate;
        uint vote;
    }

    //Enum to tract voting state
    enum State { Created , Voting , Ended }

    State public state;

    //event to log voting activity
    event VoteCast(address indexed voter, uint indexed proposal);

    mapping (address => Voter) public voters ;

    //Start voting process
    function startVoting() public {
        state = State.Voting;
    }

    //Cast a votr
    function castVote(uint proposal) public {
        require(state == State.Voting , "Voting is not active");
        voters[msg.sender].voted = true;
        emit VoteCast(msg.sender , proposal);
    }
}