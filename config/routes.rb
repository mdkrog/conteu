Rails.application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'
  root 'pages#home'

  resources :issues do
    member do
      get 'preview'
    end
  end
  resources :articles, except: [:index]
  resources :categories, except: [:index, :show]

  resources :passwords, controller: 'clearance/passwords', only: [:create, :new]
  resource :session, controller: 'clearance/sessions', only: [:create]

  resources :users, controller: 'clearance/users', only: [:create] do
    resource :password,
      controller: 'clearance/passwords',
      only: [:create, :edit, :update]
  end

  get '/admin' => 'pages#admin', as: 'admin'
  get '/subscribe' => 'pages#subscribe', as: 'subscribe'

  get '/sign_in' => 'clearance/sessions#new', as: 'sign_in'
  delete '/sign_out' => 'clearance/sessions#destroy', as: 'sign_out'
  # get '/sign_up' => 'clearance/users#new', as: 'sign_up'
  get "sitemap.xml" => "sitemap#index", as: "sitemap", defaults: { format: "xml" }
end
