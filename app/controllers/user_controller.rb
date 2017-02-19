class UserController < ApplicationController
  
  def update
    id_token = request.headers['id-token'].to_s
    Rails.logger.info id_token
    updateFields = params

    @user = User.find_by(id_token: id_token)
    Rails.logger.info User.find_by(id_token: id_token)
    @user.update_attributes!(updateFields.permit(:role_ids))
    @user.save   
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

  def user_creation_callback
    Rails.logger.info params[:access_token]
    new_user = User.new(id_token: params[:id_token],
                        access_token: params[:access_token],
                        refresh_token: params[:refresh_token])
  end
end
end

