Rails.application.routes.draw do
  get 'introduction/index'

  get 'introduction/farmer1'

  get 'introduction/farmer2'

  get 'introduction/farmer3'

  get 'introduction/farmer4'

  devise_for :users
  resources :organics

  resource :cart, only: [:show, :destroy] do
    collection do
      post :add,path: 'add/:id'
    end
  end

  root "organics#index"
end
