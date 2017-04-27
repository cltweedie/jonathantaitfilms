Rails.application.routes.draw do
  devise_for :users, controllers: {
          sessions: 'users/sessions'
        }
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root 'home#index'
  
  get '/about', to: 'home#about'
  get '/contact', to: 'home#contact'
  
  get '/admin', to: 'admin#index'
  namespace 'admin' do
    resources :albums do
      resources :photos
    end
    resources :content_blocks
  end
  
  resources :albums

end
