class DogsController < ApplicationController
wrap_parameters format: []
    
def index
dogs = Dog.all
render json: dogs, status: :ok

end

def show
    dog = find_dog
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
    dog = find_dog
    dog.update(dog_params)
    render json: dog, status: :accepted
    end
    
    def destroy
    dog = find_dog
    head :no_content
    end
   
private

def dog_params
params.permit(:id, :name, :image, :user_id, :description)
end

def find_dog
    Dog.find_by(id: params[:id])
end
# def render_unprocessable_entity_response(invalid)
#    render json: { errors: invalid.record.errors }, status: :unprocessable_entity
# end
end
