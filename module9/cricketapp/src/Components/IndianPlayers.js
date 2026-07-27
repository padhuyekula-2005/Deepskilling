import React from "react";

function IndianPlayers() {

    const Team = [
        "Sachin1",
        "Dhoni2",
        "Virat3",
        "Rohit4",
        "Yuvaraj5",
        "Raina6"
    ];

    const [First, Second, Third, Fourth, Fifth, Sixth] = Team;

    const T20players = [
        "Mr. First Player",
        "Mr. Second Player",
        "Mr. Third Player"
    ];

    const RanjiPlayers = [
        "Mr. Fourth Player",
        "Mr. Fifth Player",
        "Mr. Sixth Player"
    ];

    const IndianPlayers = [...T20players, ...RanjiPlayers];

    return (
        <div>

            <h1>Odd Players</h1>

            <ul>
                <li>First : {First}</li>
                <li>Third : {Third}</li>
                <li>Fifth : {Fifth}</li>
            </ul>

            <hr />

            <h1>Even Players</h1>

            <ul>
                <li>Second : {Second}</li>
                <li>Fourth : {Fourth}</li>
                <li>Sixth : {Sixth}</li>
            </ul>

            <hr />

            <h1>List of Indian Players Merged:</h1>

            <ul>
                {IndianPlayers.map((item, index) => (
                    <li key={index}>{item}</li>
                ))}
            </ul>

        </div>
    );
}

export default IndianPlayers;