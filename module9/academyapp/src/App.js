import "./App.css";
import CohortDetails from "./Components/CohortDetails";

function App() {
  return (
    <div>

      <h1>My Academy Dashboard</h1>

      <CohortDetails
        name="React Fundamentals"
        startDate="01-Jul-2026"
        status="ongoing"
        coach="Rahul"
        trainer="Anil"
      />

      <CohortDetails
        name="Java Full Stack"
        startDate="15-May-2026"
        status="completed"
        coach="Priya"
        trainer="Suresh"
      />

      <CohortDetails
        name="Spring Boot"
        startDate="10-Jun-2026"
        status="ongoing"
        coach="Kiran"
        trainer="Ramesh"
      />

    </div>
  );
}

export default App;