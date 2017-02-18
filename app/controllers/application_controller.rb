class ApplicationController < ActionController::API
  before_action :authenticate
  
  

  def authenticate
    Rails.logger.info "We would normally authenticate here!"
    #render json: { status: "1" }
  end
  
 
  def new
    render json: { status: "1" }
  end
 
    
end
