Inventory::Application.routes.draw do

  match 'events/day/:date' => 'events#day'

  match 'pickup_lists/:id/edit/:client_id' => 'pickup_lists#edit'

  match 'pickup_lists/:client_id' => 'pickup_lists#show'

  match 'picked_up/:pickup_list_id/:product_id' => 'picked_up#pickup'

  resources :wish_list_items

  match 'pickup_lists/new/:client_id' => 'pickup_lists#new_with_client'

  match 'events/new_with_client/:client_id' => 'events#new_with_client'
  
  resources :categories  

  resources :clients 
  
  resources :pickup_lists
  
  resources :levels
  
  devise_for :users

  get "roles/new"

  get "roles/create"

  get "roles/index"

  get "roles/edit"

  get "roles/_form"

  devise_for :agents

  resources :donors

  resources :products

  resources :events

  get "user/index"

  get "home/index"

  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
	root :to => "home#index"
	

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
