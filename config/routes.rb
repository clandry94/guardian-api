Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tmp_endpoint#out'

  post 'test', to: 'tmp_endpoint#in'
  get 'test', to: 'tmp_endpoint#out'
  #User routes
  post 'user', to: 'user#update'
  delete 'user', to: 'user#delete'
  get 'user', to: 'user#show'
  get 'user/events', to: 'user#events'
  # notifications params 'phone_number':'xxxxxxxxx', 'alert_message':'xxxxxxxx'
  post 'notifications/send_message', to: 'notifications#send_message'
  post 'notifications/send_email', to: 'notifications#send_email'
end
