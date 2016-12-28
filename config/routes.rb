Rails.application.routes.draw do
  get 'main/index'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "main#index"
  get '/item/:filename', to: 'main#item', as: "fetch_item"
  get '/size/:size', to: 'main#size', as: "fetch_size"
end
