import React from 'react';

function Home({ user }) {
    if (user) {
      
        return (
          <>
          <div className= "content">
            <h4>Karibu, { user.firstname }!</h4>
            </div>      
          </>
        )
        
      } else {
        return <h2>Please log in to continue...</h2>;
      }
    }

export default Home;