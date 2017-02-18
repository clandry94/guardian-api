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
        .save
    render status: 200
  end

 def show
    objectId = BSON::ObjectId.from_string(params[:objectId]) 

    data = User.find_by(_id: objectId)
    render json: data
  end

  def delete
    objectId = BSON::ObjectId.from_string(params[:objectId])   

    User.delete(_id: objectId).save 
    render status: 200
  end

end

