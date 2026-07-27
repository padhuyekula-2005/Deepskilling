import './App.css';
import officeImage from './images/office.jpg';

function App() {

  const office = {
    name: "Sky Business Center",
    rent: 55000,
    address: "Hyderabad"
  };

  const officeList = [
    {
      name: "Sky Business Center",
      rent: 55000,
      address: "Hyderabad"
    },
    {
      name: "Tech Park",
      rent: 75000,
      address: "Bangalore"
    },
    {
      name: "Cyber Towers",
      rent: 45000,
      address: "Chennai"
    }
  ];

  return (
    <div className="App">

      <h1>Office Space Rental App</h1>

      <img
        src={officeImage}
        alt="Office Space"
        width="500"
        height="300"
      />

      <h2>Single Office Details</h2>

      <p><b>Name:</b> {office.name}</p>

      <p>
        <b>Rent:</b>

        <span
          style={{
            color: office.rent < 60000 ? "red" : "green"
          }}
        >
          ₹ {office.rent}
        </span>

      </p>

      <p><b>Address:</b> {office.address}</p>

      <hr />

      <h2>Available Office Spaces</h2>

      {
        officeList.map((item, index) => (

          <div key={index} className="card">

            <h3>{item.name}</h3>

            <p>
              Rent :
              <span
                style={{
                  color: item.rent < 60000 ? "red" : "green"
                }}
              >
                ₹ {item.rent}
              </span>
            </p>

            <p>Address : {item.address}</p>

          </div>

        ))
      }

    </div>
  );

}

export default App;