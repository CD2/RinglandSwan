Rails.application.routes.draw do
  get '/index.html', to: redirect('/')
  get '/reservations.html', to: redirect('/book-online')
  get '/bar.html', to: redirect('/restaurant')
  get '/gallery.html', to: redirect('/gallery')
  get '/heroes.html', to: redirect('/restaurant')
  resources :testimonials
  root 'pages#home'

  get '/about'                   => 'pages#about'

  get  '/contact-us'             => 'enquiries#new'
  post '/contact-us'             => 'enquiries#create'
  get  '/contact-us/thanks'      => 'enquiries#thanks'

  get  '/book-online'             => 'bookings#new'
  post '/book-online'             => 'bookings#create'
  get  '/book-online/thanks'      => 'bookings#thanks'

  get     'login'     => 'user_system/sessions#new'
  post    'login'     => 'user_system/sessions#create'
  delete  'logout'    => 'user_system/sessions#destroy'

  namespace :admin do
    resources :pages, except: :show do
      collection { get :pdf_menu }
      resources :banner_image, only: :destroy
    end
    resources :enquiries, only: [:index, :destroy, :show]
    resources :bookings, only: [:index, :destroy, :show]
    resources :events, except: :show
    resources :gallery_images, except: :show do
      collection { post :upload }
    end
  end

  scope module: :user_system do
    resources :users, only: [:new, :create, :edit, :update, :show]
    resources :sessions, only: [:new, :create, :destroy]
    resources :account_activations, only: :edit
    resources :password_resets, only: [:new, :create, :edit, :update]
  end

  mount Ckeditor::Engine => '/ckeditor'

  resources :events, only: :index
  resources :bookings, only: [:create, :new]
  resources :gallery_images, path: 'gallery', only: [:index]
  resources :enquiries, only: [:create, :new]
  resources :pages, path: '', only: :show



end
