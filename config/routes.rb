Rails.application.routes.draw do
  mount Mercury::Engine => '/'

  namespace :mercury do
    resources :images
  end

  get 'page_contents/index'
  get 'page_contents/edit'

  devise_for :users

  devise_scope :user do
    get "/admin" => "devise/sessions#new"
    get "/sign_up" => "devise/registrations#new"
  end

  get 'pages/home'
  get 'pages/company', id: '2'
  get 'pages/services', id: '3'
  get 'vehicles/new_vehicles', id: '4'
  get 'vehicles/used', id: '5'
  get 'vehicles/search_filter', id: '6'
  get 'motorcycles/new_motorcycles', id: '7'
  get 'motorcycles/used', id: '8'
  get 'pages/news', id: '9'
  get 'pages/contact', id: '10'

  put '/', to: 'page_contents#save_page', id: '1'
  put '/pages/company', to: 'page_contents#save_page', id: '2'
  put '/pages/services', to: 'page_contents#save_page', id: '3'
  put '/vehicles/new_vehicles', to: 'page_contents#save_page', id: '4'
  put '/vehicles/used', to: 'page_contents#save_page', id: '5'
  put '/vehicles/search_filter', to: 'page_contents#save_page', id: '6'
  put '/motorcycles/new_motorcycles', to: 'page_contents#save_page', id: '7'
  put '/motorcycles/used', to: 'page_contents#save_page', id: '8'
  put '/pages/news', to: 'page_contents#save_page', id: '9'
  put '/pages/contact', to: 'page_contents#save_page', id: '10'

  resources :allies, :except => [:show]
  resources :procedures
  resources :opinions
  resources :contacts
  resources :vehicles
  resources :categories
  resources :page_contents
  resources :brands
  resources :news do
    get 'rate', on: :member
  end
  root 'pages#home', id: '1'
end
