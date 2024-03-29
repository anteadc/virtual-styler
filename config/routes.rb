Rails.application.routes.draw do
  devise_for :users


  root to: "pages#home"

  get "/design", to: "pages#design"
  get "/basket", to: "pages#basket"
  get "/paymentdone", to: "pages#paymentdone"

  get "/styles", to: "presets#styles"
  get "/presets", to: "presets#presets"

  resources :customs, only: [:index, :show, :new, :create]


  resources :bookings, only: [:show, :update] do
    resources :chatrooms, only: [:create]
  end

  resources :chatrooms, only: [:new, :show] do
    resources :messages, only: :create
  end


  get "/user_dashboard", to: "customs#user_dashboard"
  get "/designer_dashboard", to: "customs#designer_dashboard"








  get "/booking/3/model", to: "customs#model"
  get "/booking/3/model/checkout", to: "customs#model_checkout"
  get "/booking/3/spec", to: "customs#spec"






  # resources :bookings, only: [:show] do
  #   resources :model, only: [:show]
  # end

  # resources :designers do
  #   resources :customs, only: [:index, :new, :create]
  # end

  # resources :customs, only: [:show]

end
