Rails.application.routes.draw do
  get 'profiles/profile'

  get 'collaborators/single'
  get 'collaborators/teams'
  get 'collaborators/list'
  get 'collaborators/search'
  get 'employee/employee'
  resources :employees
  get 'test_conts/index'
  resources :test_conts
  get 'home/dashboard'

   root 'employee#employee'
   
  #post 'collaborators/search'

  devise_for :users

end
