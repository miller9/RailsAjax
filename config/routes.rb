Rails.application.routes.draw do
  #get 'uploads/new'
  root 'uploads#new'
  resources :uploads

  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
