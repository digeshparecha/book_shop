Rails.application.routes.draw do
  root "search#search"

  devise_for :users

  namespace :admin do
    resources :books do
      collection do
        get 'report'
      end
    end
    resources :categories
    resources :users, only: [:index]
  end
  
  get "dashboard", to: "dashboard#dashboard"
  delete "/books/:book_id/remove_from_favourite", to: "dashboard#remove_from_favourite"
  get "/books/:book_id/add_to_favourite", to: "dashboard#add_to_favourite"

end
