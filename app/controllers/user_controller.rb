class UserController < ApplicationController
  
  def update
    id_token = request.headers['id-token'].to_s
    Rails.logger.info id_token
    updateFields = params

    @user = User.find_by(id_token: id_token)
    Rails.logger.info User.find_by(id_token: id_token)
    @user.update_attributes!(user_params)
    @user.save   
    render json: @user
  end

  def show
    render json: @user
  end

  def delete
    id_token = request.headers['id-token'].to_s
    @user = User.find_by(id_token: id_token)
    @user.delete
    @user.save 
    render status: 200
  end

  def events
    id_token = request.headers['id-token'].to_s
    @user = User.find_by(id_token: id_token)
    foundUserEvents = @user[:events]
    render json: foundUserEvents
  end
  
  def user_creation_callback
    Rails.logger.info params[:access_token]
    new_user = User.new(id_token: params[:id_token],
                        access_token: params[:access_token],
                        refresh_token: params[:refresh_token])
  end

  private

  def user_params
    params.permit(:access_token, 
                  :refresh_token, 
                  :photo, 
                  :phone, 
                  :emergency_contacts, 
                  :address)
  end
end

