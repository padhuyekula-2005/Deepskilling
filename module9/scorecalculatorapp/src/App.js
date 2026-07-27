import './App.css';
import CalculateScore from "./Components/CalculateScore";

function App() {

  return (

    <div>

      <CalculateScore
        Name="Padmavathi Yekula"
        School="Narayana English Medium School"
        Total={450}
        goal={5}
      />

    </div>

  );

}

export default App;