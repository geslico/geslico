Rails.application.routes.draw do
  
  scope "(:locale)", locale: /es|en/ do

    root 'welcome#index'

    get 'sessions/new'
    get    'login'   => 'sessions#new'
    post   'login'   => 'sessions#create'
    delete 'logout'  => 'sessions#destroy'  
    
    
    resources :welcome
    resources :contajes
    resources :fechas_cargas

    resources :sedes
    resources :acronimos_sede_edrs
    resources :unidades
  
    resources :v_tetra_planes 
    # resources :plan_issis
    # resources :v_tetra_plan_gssis
    
    resources :lin_moviles
    resources :modelos_terminales 
    
    resources :usuarios do
      resources :usuarios_programas do
        resources :programas 
        end
    end

    get 'informes/sedes' => 'informes#index', as: 'informes_sedes'
    get 'informes/radio' => 'informes#index', as: 'informes_radio'
    get 'informes/movil' => 'informes#index', as: 'informes_movil'
    get 'informes/fija' => 'informes#index', as: 'informes_fija'
    get 'informes/electronica' => 'informes#index', as: 'informes_electronica'
    get 'informes/datos' => 'informes#index', as: 'informes_datos'
      

  end
  
  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  

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
