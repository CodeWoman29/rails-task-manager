Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root to: 'tasks#index' # always the first one

  ## READ

  get 'tasks', to: 'tasks#index'

    # get    "restaurants/new",      to: "restaurants#new"
    # post   "restaurants",          to: "restaurants#create"

    # # NB: The `show` route needs to be *after* `new` route.
    # get    "restaurants/:id",      to: "restaurants#show"

    # get    "restaurants/:id/edit", to: "restaurants#edit"
    # patch  "restaurants/:id",      to: "restaurants#update"

    # delete "restaurants/:id",      to: "restaurants#destroy"
end
