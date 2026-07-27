import React from "react";

function BookDetails() {

  const showBooks = true;

  if (showBooks) {
    return (
      <div>
        <h2>Book Details</h2>

        <ul>
          <li>Book Name: React Explained</li>
          <li>Author: Zac Gordon</li>
          <li>Price: ₹650</li>
        </ul>

        <ul>
          <li>Book Name: Java Programming</li>
          <li>Author: James Gosling</li>
          <li>Price: ₹800</li>
        </ul>

        <ul>
          <li>Book Name: Spring Boot Guide</li>
          <li>Author: Craig Walls</li>
          <li>Price: ₹700</li>
        </ul>
      </div>
    );
  }

  return <h2>No Book Details Available</h2>;
}

export default BookDetails;