class UsersController < ApplicationController
    def index
        users = User.all
        render json: users, status: :ok
        end

    def create 
        user = User.create(user_params)
        if user
            session[:user_id] = user.id
            render json: user, status: :created
        else
            render json: { error: user.errors.full_messages }, status: :unprocessable_entity
        end
    end
    def show
        user = User.find_by(id: session[:user_id])
        if user
            render json: user
        else
            render json: { error: "Not authorized" }, status: :unauthorized
        end
    end
private
    def user_params
        params.permit(:username, :firstname, :lastname, :email, :password, :password_confirmation)
    end
end
