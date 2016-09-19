Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'


  post '/login' => 'login#login'
  post '/logout' => 'main#logout'
  post '/timein' => 'main#timein'
  post '/timeout' => 'main#timeout'
  post '/search' => 'main#search'
  get '/main' => 'main#index'
  get '/worktime' => 'worktime#index'

  get '/account_management' => 'account_management#index'


end
