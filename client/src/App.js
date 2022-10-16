import { Switch, Route } from "react-router-dom";
import React, { useEffect, useState } from "react";
import Home from './Components/Home';
import Login from './Components/Login';
import Signup from './Components/Signup';
import NavBar from './Components/NavBar';
import DogPage from './Components/DogPage'


function App() {
  const [user, setUser] = useState(null); 

  useEffect(() => {

    fetch("/me").then((r) => {
      if (r.ok) {
        r.json().then((user) => setUser(user));
      }
    });
  }, []);

  return (
    <>
    <NavBar/>
    <NavBar user={user} setUser={setUser} />

    <div className= "main">
      {user?(
        <>
        <Switch>
              <Route strict path="/">
                <Home exact user={user}/>
              </Route>                          
            </Switch>
        </>
      ):(
        <Switch>
            <Route path="/signup">
              <Signup setUser={setUser} />
            </Route>
            <Route path="/login">
              <Login setUser={setUser} />
            </Route>
            <Route strict path="/">
                <Home />
            </Route>
          </Switch>
      )}
    </div>
    <DogPage />
    </>
  
  );
  
}

export default App;
