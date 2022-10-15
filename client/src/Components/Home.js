import React from 'react'

function Home({ user }) {
    if (user) {
      
        return (
          <>
            <h4>Karibu, { user.firstname }!</h4>
        
          </>
        )
        
      } else {
        return <h2>Please log in to continue...</h2>;
      }
    }

export default Home;