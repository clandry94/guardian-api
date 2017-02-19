class ApplicationController < ActionController::API
  before_action :authenticate
  
  

  def authenticate
    Rails.logger.info "We would normally authenticate here!"
    #render json: { status: "1" }
    id_token = request.headers
    Rails.logger.info request.headers["HTTP_CONTENT_TYPE"]
    @user = User.find_by(id_token: id_token)
    @user
  end
  
 
  def new
    render json: { status: "1" }
  end
 
    
end
