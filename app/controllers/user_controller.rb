class UserController < ApplicationController
  
  #signUp
  def create
  end
  #TODO: return callback with modified fields and delete
  def update
    objectId = BSON::ObjectId.from_string(params[:objectId]) 
    updateFields = params[:updateFields]

    User.where(_id: objectId)
        .find_and_modify(updateFields)
    render status: 200
  end

 def show
    objectId = BSON::ObjectId.from_string(params[:objectId]) 

    data = User.find_by(_id: objectId)
    render json: data
  end

  def delete
    objectId = BSON::ObjectId.from_string(params[:objectId])   

    User.delete(_id: objectId) 
    render status: 200
  end

  def user_creation_callback
    Rails.logger.info params[:access_token]
    new_user = User.new(id_token: params[:id_token],
                        access_token: params[:access_token],
                        refresh_token: params[:refresh_token])
  end
end

