import React from 'react';
import DogCard from './DogCard';

function DogList({ dogs, onDeleteDog}) {
  return (
    <div className='dogcards'>
        {dogs.map((dog) => {
            return (
                <DogCard
                key = {dog.id}
                dog ={dog}
                onDeleteDog = {onDeleteDog}
                
                />
            );
        })}
    </div>
  );
}

export default DogList