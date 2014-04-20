Prepify::Application.routes.draw do
  root :to => "home#index"
  devise_for :users, :controllers => {:registrations => "registrations"}
  resources :users do
    resources :results
  end

  resources :lessons do
    resources :questions do
    end
  end
  
end