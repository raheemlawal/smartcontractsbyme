//SPDX-License-Identifier: MIT
pragma solidity >0.5.0;

contract SoccerGame{
    
    uint teamOneScore;
    uint teamTwoScore;
    
    constructor(uint _teamOneScore, uint _teamTwoScore) {
        teamOneScore = _teamOneScore;
        teamTwoScore = _teamTwoScore;
    }

    function addGoal(uint teamId) private {
        if(teamId == 1){
            teamOneScore++;
        }
        if(teamId == 2){
            teamTwoScore++;
        }
    }
}
