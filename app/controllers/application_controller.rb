class ApplicationController < ActionController::API
  before_action :authenticate
  
  def authenticate
    Rails.logger.info "We would normally authenticate here!"
    #render json: { status: "1" }
    id_token = request.headers["id-token"]
    Rails.logger.info request.headers["id-token"]
    @user = User.find_by(id_token: id_token)
    @user
  end
   
  def new
    id_token = params[:id_token]
    Rails.logger.info "ID TOKEN #{id_token}" 
    Rails.logger.info User.find_by(id_token: id_token)

    if User.find_by(id_token: id_token)
      Rails.logger.info "User exists!"
      # redirect to an api call for the user
      return
    end
     
    begin
      auth_client = User.set_access_token params[:auth_code]
    rescue => e
      Rails.logger.info e
    end 
  end
 
  def authcode_callback
    user = User.new(id_token: params[:id_token], access_token: params[:access_token])
      
    if user.save
      # at this point we should probably pull down all the events
      # and render the users document after getting events  
    end

    Rails.logger.info params[:id_token]
  end


end
