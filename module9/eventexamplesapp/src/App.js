import React, { useState } from "react";
import "./App.css";
import CurrencyConvertor from "./components/CurrencyConvertor";

function App() {

  const [count, setCount] = useState(0);

  function incrementCounter() {

    setCount(count + 1);

  }

  function decrementCounter() {

    setCount(count - 1);

  }

  function sayHello() {

    alert("Hello! Have a Nice Day.");

  }

  function increase() {

    incrementCounter();

    sayHello();

  }

  function sayWelcome(message) {

    alert(message);

  }

  function onPress(event) {

    alert("I was clicked");

    console.log(event);

  }

  return (

    <div className="App">

      <h1>React Event Examples</h1>

      <h2>Counter : {count}</h2>

      <button onClick={increase}>
        Increment
      </button>

      <button onClick={decrementCounter}>
        Decrement
      </button>

      <br /><br />

      <button
        onClick={() => sayWelcome("Welcome")}
      >
        Say Welcome
      </button>

      <br /><br />

      <button
        onClick={onPress}
      >
        OnPress
      </button>

      <hr />

      <CurrencyConvertor />

    </div>

  );

}

export default App;