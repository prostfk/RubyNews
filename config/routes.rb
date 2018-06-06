Rails.application.routes.draw do

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root 'pages#hello_world_ruby'

  get 'latest_news', to: 'pages#latest_news'

  resources :pages

end
