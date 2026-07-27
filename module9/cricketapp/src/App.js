import React from "react";
import IndianPlayers from "./Components/IndianPlayers";
import ListofPlayers from "./Components/ListofPlayers";

function App() {

    const flag = false;

    return (
        <div>
            {flag ? <ListofPlayers /> : <IndianPlayers />}
        </div>
    );
}

export default App;