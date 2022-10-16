import React, { useState } from 'react'

function EditDog({ dog, onEditDog }) {

    const [name, setName] = useState("");
    const [image, setImage] = useState("")
    const [description, setDescription] = useState("")

    function handleEditDog(e) {
        e.preventDefault();
        fetch (`/dogs/${dog.id}`, {
            method: "PATCH", 
            headers: {
                "Content-Type": "application/json",
              },
              body: JSON.stringify({
                newName: name,
                newImage: image,
                newDescription: description
              }),
        })

        .then((r) => r.json())
        .then(editedDog => {
            onEditDog(editedDog)
            setName("")
          setImage("")
          setDescription("")
        })
    }
  return (
    <div>
        <form onSubmit={handleEditDog} >
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
        <button type="submit">editDog</button>
        </form>
    </div>
  )
}

export default EditDog;