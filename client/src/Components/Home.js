import React from 'react';
import DogPage from './DogPage'

function Home({ user }) {
    if (user) {
      
        return (
          <>
            <h4>Karibu, { user.firstname }!</h4>
            <DogPage />
          </>
        )
        
      } else {
        return <h2>Please log in to continue...</h2>;
      }
    }

export default Home