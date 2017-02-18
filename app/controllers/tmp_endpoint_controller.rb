class TmpEndpointController < ApplicationController

  def out
    val = { hello: "world" }
    render json: val
  end


  def in
    
  end

  def create
  end
  
  def new

  end

  def show

  end

  def destroy 
    puts params[:name] 
    User.where(name[:first]: "Conor")
  end

end
