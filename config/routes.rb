Rails.application.routes.draw do
  
  root "static_pages#home"
  get 'static_pages/contact'

  resources :categories, shallow: true do
    resources :videos
  end
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
