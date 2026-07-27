import React from "react";

function ListofPlayers() {

    const players = [
        { name: "Sachin", score: 90 },
        { name: "Dhoni", score: 82 },
        { name: "Virat", score: 95 },
        { name: "Rohit", score: 68 },
        { name: "Yuvaraj", score: 74 },
        { name: "Raina", score: 55 },
        { name: "Hardik", score: 77 },
        { name: "Gill", score: 61 },
        { name: "Pant", score: 72 },
        { name: "Jadeja", score: 65 },
        { name: "Bumrah", score: 88 }
    ];

    const lowScorePlayers = players.filter(player => player.score < 70);

    return (

        <div>

            <h1>List of Players</h1>

            <ul>
                {
                    players.map((player, index) => (
                        <li key={index}>
                            {player.name} : {player.score}
                        </li>
                    ))
                }
            </ul>

            <hr />

            <h1>Players Scoring Below 70</h1>

            <ul>
                {
                    lowScorePlayers.map((player, index) => (
                        <li key={index}>
                            {player.name} : {player.score}
                        </li>
                    ))
                }
            </ul>

        </div>

    );
}

export default ListofPlayers;