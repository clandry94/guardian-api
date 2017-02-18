class TmpEndpointController < ApplicationController

  def out
    val = { hello: "world" }
    render json: val
  end


  def in
    
  end
end
