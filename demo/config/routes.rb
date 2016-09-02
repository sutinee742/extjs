Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'


  post '/login' => 'login#login'
  post '/logout' => 'main#logout'
  get '/main' => 'main#index'


end
