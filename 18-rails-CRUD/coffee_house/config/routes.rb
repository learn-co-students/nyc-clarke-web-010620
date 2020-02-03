Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  # resources :drinks, only: [:index, :show, :new, :create, :edit, :update, :destroy]
  # resources :drinks, except: [:destroy]
  resources :drinks

  # get 'drinks', to: 'drinks#index', as: "drinks"
  # get 'drinks/new', to: 'drinks#new', as: "drink"
  # get 'drinks/:id', to: 'drinks#show', as: "new_drink"
  # get 'drinks/:id/edit', to: 'drinks#edit', as: "edit_drink"
  # patch 'drinks/:id', to: 'drinks#update'
  # post '/drinks', to: 'drinks#create'
  # delete 'drinks/:id', to: 'drinks#destroy'
end
