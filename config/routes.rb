Rails.application.routes.draw do
  
  
  root 'bases#index'
  
  
  
  root 'static_pages#top'
  get '/signup', to: 'users#new'

  # ログイン機能
  get    '/login', to: 'sessions#new'
  post   '/login', to: 'sessions#create'
  delete '/logout', to: 'sessions#destroy'

  resources :users do
    
    member do
      get 'edit_basic_info'
      patch 'update_basic_info'
      get 'attendances/edit_one_month'
      patch 'attendances/update_one_month'
      get 'attendances/edit_overwork_request'
      patch 'attendances/update_overwork_request'
    end
    
    collection do
      get 'atwork_members'
    end  
    
    collection { post :import }

    resources :attendances, only: :update

  end
  
  
  root 'home#top'
 
  get 'bases/new', to: 'bases#new'
  post 'bases/create', to: 'bases#create'
  get 'bases/index', to: 'bases#index'
  get 'bases/:id', to: 'bases#show', as: :base
  get 'bases/:id/edit', to: 'bases#edit', as: :edit_base
  post 'bases/:id/update', to: 'bases#update', as: :update_base
  post 'bases/:id/destroy', to: 'bases#destroy', as: :destroy_base
  
end
