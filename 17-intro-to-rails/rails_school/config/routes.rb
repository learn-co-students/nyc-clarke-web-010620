Rails.application.routes.draw do
  # resources :students
  resources :students, only: [:index]

  # get "/students", to: "students#index"
  # get "/students/:id", to: "students#show"

  # get "/students/new", to: "students#new"





  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
