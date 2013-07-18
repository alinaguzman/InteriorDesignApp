Interiordesignapp::Application.routes.draw do
  devise_for :users
  root :to => 'welcome#about'




 # get "/oauth/connect" => 'instagram#connect', :as => 'oauth_connect'
 # get "/oauth/callback" => 'instagram#callback', :as => 'oauth_callback'

  get '/users/profile' => 'users#profile', :as => 'profile'
  get '/designers/profile' => 'designers#profile', :as => 'designer_profile'
  post '/designers/profile/results' => 'designers#results', :as => 'results'
  post '/designers/tags' => 'designers#add_tag', :as => 'add_tag'
  post '/designers/portfolio' => 'designers#add_to_portfolio', :as => 'add_to_portfolio'

  get '/users/search' => 'users#search', :as => 'search'
  get '/users/results/:id' => 'users#show', :as => 'show'
  post '/users/results/:id' => 'users#save_designer', :as => 'save_designer'

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


  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
