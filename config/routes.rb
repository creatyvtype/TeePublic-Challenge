Rails.application.routes.draw do
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#index"
  get '/item/:type', to: 'main#item'
  get '/art_resize/:size', to: 'main#art_resize'
end
