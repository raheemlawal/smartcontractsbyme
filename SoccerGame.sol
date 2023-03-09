//SPDX-License-Identifier: MIT
pragma solidity >0.5.0;

//game is over when a team score 5 goals

contract SoccerGame{
    
    uint8 teamOneScore;
    uint8 teamTwoScore;
    
    constructor(uint8 _teamOneScore, uint8 _teamTwoScore) {
        teamOneScore = _teamOneScore;
        teamTwoScore = _teamTwoScore;
    }

    modifier isGameOver(){
        if(teamOneScore >=5 || teamTwoScore >= 5){
            _;
        }
    }

    function addGoal(uint teamId) private isGameOver{
        if(teamId == 1){
            teamOneScore++;
        }
        if(teamId == 2){
            teamTwoScore++;
        }
    }
    
}
