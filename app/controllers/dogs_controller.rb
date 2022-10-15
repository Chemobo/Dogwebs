class DogsController < ApplicationController
    wrap_parameters format: []
    
    def index
    dogs = Dog.all
    render json: dogs, status: :ok
    end

    def show
        dog = Dog.find_by(id:params[:id])
        if dog
            render json: dog, status: :ok
        else 
            render json: {error: "dog not found"}, status: :not_found
        end 
    end    

    def create
        dog = Dog.create(dog_params)
        render json: dog, status: :created
    end

    def update
        dog = Dog.find_by(id: params[:id])
        dog.update(dog_params)
        render json: dog, status: :accepted
        end
        
        def destroy
        dog = Dog.find_by(id: params[:id])
        dog.destroy
        head :no_content
        end
       
    private
    
    def dog_params
    params.permit(:name, :image, :description)
    end
  

end
 
