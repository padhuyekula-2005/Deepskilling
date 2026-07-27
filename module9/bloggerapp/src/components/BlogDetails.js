import React from "react";

function BlogDetails() {

  const isLoggedIn = false;

  return (
    <div>
      <h2>Blog Details</h2>

      {
        isLoggedIn ? (
          <div>
            <h3>Latest Blogs</h3>

            <ul>
              <li>Understanding React Components</li>
              <li>Conditional Rendering in React</li>
              <li>React Hooks Tutorial</li>
            </ul>
          </div>
        ) : (
          <h3>Please Login to View Blogs</h3>
        )
      }

    </div>
  );
}

export default BlogDetails;