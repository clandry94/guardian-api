class UserController < ApplicationController
  
  #signUp
  def create
  end
  #TODO: return callback with modified fields and delete
  def update
    id_token = request.headers['id_token']
    updateFields = params[:updateFields]

    User.where(id_token: id_token)
        .find_and_modify(updateFields)
        .save
    updatedUser = User.find_by(id_token: id_token)     
    render json: updatedUser
  end

 def show
    id_token = request.headers['id_token'] 

    foundUser = User.find_by(id_token: id_token)
    render json: foundUser
  end

  def delete
    id_token = request.headers['id_token']   

    User.delete(id_token: id_token).save 
    render status: 200
  end

  def user_creation_callback
    Rails.logger.info params[:access_token]
    new_user = User.new(id_token: params[:id_token],
                        access_token: params[:access_token],
                        refresh_token: params[:refresh_token])
  end
end

