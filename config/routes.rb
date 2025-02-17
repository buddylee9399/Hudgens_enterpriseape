Rails.application.routes.draw do
  resources :items
  resources :employees

  resources :companies do
    collection { post :import}
  end
  resources :invoices do 
    resources :purchases, except: [:index, :show], controller: 'invoices/purchases'
  end
  root to: 'invoices#index'
  
  get   'about', to: 'static_pages#about'
  get   'contact', to: 'static_pages#contact'
  get   'privacy', to: 'static_pages#privacy'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
end
