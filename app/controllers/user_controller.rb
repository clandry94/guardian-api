class UserController < ApplicationController
  
  def update
    id_token = request.headers['id_token']
    updateFields = params[:updateFields]

    @user.update(updateFields)    
    render json: @user
  end

 def show
    render json: @user
  end

  def delete
    @user.delete
    @user.save 
    render status: 200
  end

  def events
    foundUserEvents = @user[:events]
    render json: foundUserEvents
  end
end

