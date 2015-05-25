Rails.application.routes.draw do

  devise_for :users
  devise_for :admins
  
  resources :internship_positions

  resources :full_time_positions

  root                                 'static_pages#home'

  get 'about'             =>           'static_pages#about'

  get 'contact'           =>           'static_pages#contact'

  get 'careers'           =>           'full_time_positions#index'

  get 'internships'       =>           'internship_positions#index'

  get 'events'            =>           'static_pages#events'

end