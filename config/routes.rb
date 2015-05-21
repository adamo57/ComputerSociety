Rails.application.routes.draw do

  resources :internship_positions

  resources :full_time_positions

  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  get 'users/new'

  root                                'static_pages#home'

  get 'about'             =>          'static_pages#about'

  get 'contact'           =>          'static_pages#contact'

  get 'careers' =>  'full_time_positions#index'

  get 'internships' =>  'internship_positions#index'

  get 'events'           =>           'static_pages#events'

  get 'signup'           =>           'users#new'

  get 'login'            =>           'sessions#new'

  post  'login'          =>           'sessions#create'

  delete  'logout'       =>           'sessions#destroy'

end
