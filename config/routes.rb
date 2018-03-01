Rails.application.routes.draw do
  resources :farmers
  root :to => 'welcome#index'
  get '/register' => 'farmers#new', :as => :register

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
