import React, { useState }from 'react'
import UpdateDog from './UpdateDog';

function DogCard({dog, onDeleteDog, onUpdateDog}) {
    const { id, name, image, description } = dog;
    const [updator, setUpdator] = useState(false)

    function handleClick() {
        setUpdator(!updator)
    }

    function getUpdator() {
        if (updator)
        return <UpdateDog onUpdateDog={onUpdateDog} dog={dog} />
    }

    function handleDeleteDog(){
        fetch(`/dogs/${id}`,{
            method: "DELETE",
        }).then((r) => {
            if (r.ok){
                onDeleteDog(id)
            }
        })
    }
  return (
    <div className='card'>
        <img className='figure' src={image} alt ={name}/>
        <h2>{name}</h2>
        <p>{description}</p>

        <button onClick={handleDeleteDog}>Delete</button>
        {" "}
        <button onClick={handleClick}>Update</button>
        {getUpdator()}
    </div>
  )
}

export default DogCard;