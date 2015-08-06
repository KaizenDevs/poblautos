Rails.application.routes.draw do
    namespace :mercury do
      resources :images
    end
  mount Mercury::Engine => '/'
  get 'page_contents/index'

  get 'page_contents/edit'

  get 'procedures/index'

  get 'procedures/new'

  get 'procedures/show'

  get 'procedures/edit'

  devise_for :users

  devise_scope :user do
    get "/admin" => "devise/sessions#new"
    get "/sign_up" => "devise/registrations#new"
  end

  get 'pages/home'

  get 'pages/company', id: '2'

  get 'pages/services', id: '3'

  get 'pages/news'

  get 'pages/contact'

  get 'vehicles/new_vehicles'

  get 'vehicles/used'

  get 'motorcycles/new_motorcycles'

  get 'motorcycles/used'

  put '/', to: 'page_contents#save_page', id: '1'
  put '/pages/company', to: 'page_contents#save_page', id: '2'
  put '/pages/services', to: 'page_contents#save_page', id: '3'

  resources :opinions
  resources :contacts
  resources :vehicles
  resources :categories
  resources :page_contents
  resources :news do
    get 'rate', on: :member
  end
  root 'pages#home', id: '1'
end
