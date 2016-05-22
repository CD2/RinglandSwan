Rails.application.routes.draw do

  resources :events
  resources :bookings
  resources :enquiries
  resources :banner_images

  root 'pages#home'

  get '/about'                   => 'pages#about'

  get  '/contact-us'             => 'enquiries#new'
  post '/contact-us'             => 'enquiries#create'
  get  '/contact-us/thanks'      => 'enquiries#thanks'

  resources :gallery_images, path: 'gallery', only: [:index]
  resources :enquiries, only: [:create, :new]
  resources :pages, path: '', only: :show

end
