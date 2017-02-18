class UserController < ApplicationController
  def out
    objectId = params[:objectId]  
    data = User.find_by(:_id => BSON::ObjectId.from_string(objectId))
    render json: data
  end


  def in
    
  end

  def create
  end
  
  def new

  end

  def show

  end

  def destroy(objectId) 
    puts params[:name] 
    User.where(name[:first] => "Conor")
  end

end

