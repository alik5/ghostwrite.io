Rails.application.routes.draw do
      
 
  devise_for :admins
  resources :letter_types

  root 'welcome#index'


  
  get 'business', to: 'letters#index', as: :business
  get 'personal', to: 'letters#personal_index', as: :personal
  get 'custom', to: 'ghostwrites#new', as: :custom
  get 'about', to: 'static_pages#about', as: :about
  get 'examples', to: 'static_pages#examples', as: :examples


 
 resources :ghostwrites
 resources :charges

  resources :letters
 

 # get 'user/index'

    devise_for :users
 

   
   resources :forms 
   resources "contacts", only: [:new, :create]

   mount Monologue::Engine, at: '/blog' # or whatever path, be it "/blog" or "/monologue"

   
  

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

    #  get 'modal/index' => 'modal#index'
  end

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

