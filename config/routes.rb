Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  resources :divs do
    collection do
      post :confirm
    end
  end
end
