import React from "react";

function GuestPage() {
  return (
    <div>
      <h2>Welcome Guest</h2>

      <h3>Flight Details</h3>

      <table border="1" align="center">
        <thead>
          <tr>
            <th>Flight</th>
            <th>From</th>
            <th>To</th>
            <th>Fare</th>
          </tr>
        </thead>

        <tbody>
          <tr>
            <td>AI101</td>
            <td>Hyderabad</td>
            <td>Delhi</td>
            <td>₹4500</td>
          </tr>

          <tr>
            <td>6E202</td>
            <td>Chennai</td>
            <td>Bangalore</td>
            <td>₹3000</td>
          </tr>
        </tbody>
      </table>

      <p>Please Login to Book Tickets.</p>
    </div>
  );
}

export default GuestPage;