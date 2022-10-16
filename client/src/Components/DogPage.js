import React, {useEffect, useState } from 'react';
import NewDog from './NewDog';
import DogList from './DogList';

function DogPage() {
    const [dogs, setDogs] = useState([]);

    useEffect(() => {
        fetch("/dogs")
        .then ((r) => r.json())
        .then((dogArray) => {
            setDogs(dogArray)
            console.log(dogArray)
        });
    }, []);

    function handleAddDog(NewDog){
    const updatedDogArray = [NewDog, ...dogs]
    setDogs(updatedDogArray)
  }

    function handleDeleteDog(id){
        const updatedDogArray = dogs.filter((dog) => dog.id !== id);
        setDogs(updatedDogArray)
    }
    function handleUpdateDog(){
         
    }

  return (
    <div>
          <NewDog onAddDog={handleAddDog}/>
         <DogList
         dogs={dogs}
         onDeleteDog ={handleDeleteDog}
         onUpdateDog ={handleUpdateDog}
         />
    </div>
  )
}

export default DogPage;