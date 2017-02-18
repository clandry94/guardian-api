Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: 'tmp_endpoint#out'  

  post 'test', to: 'tmp_endpoint#in'
  get 'test', to: 'tmp_endpoint#out'

  post 'user', to: 'user#out'

end
