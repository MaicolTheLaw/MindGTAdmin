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
  get 'layouts/devise'

  root 'home#dashboard'
   
  #post 'collaborators/search'

  devise_for :users

 #PRUEBA PARA DEVISE BORRAR
    #devise_for :users, controllers: {
    #sessions: 'sessions' }

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

end
