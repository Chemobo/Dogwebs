import React, { useState } from 'react'

function NewDog({onAddDog}) {
    const [name, setName] = useState("");
    const [image, setImage] = useState (" ")
    const [description, setDescription] = useState("")


    function handleSubmit(e) {
        e.preventDefault()
    
        fetch("/dogs", {
          method: "POST",
          headers: {
            "Content-Type": "application/json",
          },
          body: JSON.stringify({
            name,
            image,
            description,
          
          }),
        })
        .then((r) => r.json())
        .then(newDog => {
          onAddDog(newDog)
          setName("")
          setImage("")
          setDescription("")
        })
      }

  return (
    <div className='adddog'>
        <h4>Whats your say/comment on this dog?</h4>
        <form onSubmit={handleSubmit} >
            <input
              type="text"
              name ="name"
              placeholder="Dog name"
              value ={name}
              onChange={(e) => setName(e.target.value)}
            />
            {" "}
             <input
              type="text"
              name ="image"
              placeholder="Image"
              value ={image}
              onChange={(e) => setImage(e.target.value)}
            />
            {" "}
             <input
              type="text"
              name ="description"
              placeholder="Your Say"
              value ={description}
              onChange={(e) => setDescription(e.target.value)}
            />
            {" "}
        <button type="submit">Add Dog</button>

        </form>
    </div>
  )
}

export default NewDog;