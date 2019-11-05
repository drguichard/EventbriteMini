Rails.application.routes.draw do
  #get 'events/index'
  devise_for :users
  root 'events#index' #root indique la route vers homepage par le controller Events et sa methode index puis affiche la view events/index.html.erb
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
