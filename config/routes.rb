Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  resources :contact_list_mappings
  resources :contacts
  resources :cont_lists
  get '/cont_lists/:id', to: 'cont_lists#index'
  root 'contact_list_mappings#new'
end
