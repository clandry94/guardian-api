class ApplicationController < ActionController::API
  before_action :authenticate
  
  def authenticate
    Rails.logger.info "We would normally authenticate here!"
    #render json: { status: "1" }
  end
   
  def new
    id_token = params[:id_token]
    if User.find(id_token: id_token)
      Rails.logger.info "User exists!"
    else
      auth_client = User.set_access_token params[:auth_code]
      user = User.new(id_token: auth_client.id_token, access_token: auth_client.access_token)
      if user.save
        # at this point we should probably pull down all the events
      end
      render json: { status: "0", message: "new user created!!" }
    end    
  end
 
  def authcode_callback
    Rails.logger.info params[:id_token]
  end
end
