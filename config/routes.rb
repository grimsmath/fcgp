Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'

  # devise_for :members
  devise_for :members, controllers: {registrations: 'registrations'}

  # Plural Resources
  resources :vendors

  get 'vendor/new/free', to: 'vendors#free'
  get 'vendor/new/paid', to: 'vendors#paid'

  resources :locations
  resources :messages
  resources :members
  resources :categories
  resources :pages

  # Singular Resources
  resource :profile

  get '/category/:id', to: 'categories#show', as: 'category_show_path'

  # Administrative Resources
  namespace :admin do
    resources :pages
    resources :categories do
      collection do
        post :edit_multiple
      end
    end
    resources :alerts
    resources :tags
    resources :members

    get '/' => 'home#index'
  end

  ## Dynamic Pages
  # handle not-found pages
  get 'not_found' => 'pages#not_found'

  # This is a globbing catch-all route
  DynamicRouter.load

  # Global Individual Routes
  post '/search' => 'home#search'

  # Root path
  root to: 'home#index'

  # get '*path' => 'application#index'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

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
