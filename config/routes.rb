Rails.application.routes.draw do

  root 'pages#home'

  get '/about'                   => 'pages#about'

  get  '/contact-us'             => 'enquiries#new'
  post '/contact-us'             => 'enquiries#create'
  get  '/contact-us/thanks'      => 'enquiries#thanks'

  get  '/book-online'             => 'bookings#new'
  post '/book-online'             => 'bookings#create'
  get  '/book-online/thanks'      => 'bookings#thanks'

  resources :events, only: :index
  resources :bookings, only: [:create, :new]
  resources :gallery_images, path: 'gallery', only: [:index]
  resources :enquiries, only: [:create, :new]
  resources :pages, path: '', only: :show

end
