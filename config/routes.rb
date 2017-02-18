Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tmp_endpoint#out'  

  post 'test', to: 'tmp_endpoint#in'
  get 'test', to: 'tmp_endpoint#out'
<<<<<<< HEAD
  
  get 'resp', to: 'application#getkey'
  #post 'auth', to: 'application#new'
=======
  #User routes
  post 'user', to: 'user#show' 
  post 'user', to: 'user#update'
  post 'user', to: 'user#delete'
  get 'user', to: 'user#show'
  # notifications params 'phone_number':'xxxxxxxxx', 'alert_message':'xxxxxxxx'
  post 'notifications', to: 'notifications#send_message'
>>>>>>> user_controller
end
