Recruitment::Application.routes.draw do
  match '/auth/:provider/callback' => 'authentications#create'
  devise_for :employees
  resources :authentications
  devise_for :humanresources

  devise_for :rails

  devise_for :employees

  resources :inboxes do
    member do
      get 'sendmessage'
      get 'mymessages'
    end
  end
  
  resources :dashboard_employee
  resources :employee_registration

  resources :templates do
    member do
      get 'basicinfo'
    end
  end

  resources :othereducations do
    member do
      post 'new'
      get 'edit'
    end
  end

  resources :additionalinformations do
    member do
      post 'new'

      get 'edit'
    end
  end

  resources :educations do
    member do
      post 'new'

      get 'edit'
    end
  end

  resources :skills do
    member do
      post 'new'

      get 'edit'
    end
  end

  resources :experiences do
    member do
      post 'new'

      get 'edit'
    end
  end

  resources :summaries do
    member do
      post 'new'

      get 'edit'
    end
  end

  resources :basicinfos do
    member do
      post 'new'

      get 'edit'

      get 'editpersonalinfo'

      get 'showresume'
      
      post 'showresume'
    end
  end

  resources :empprofiles do
    member do
      post 'new'
     
    end

  end  

  match '/indexforhr', :to => 'empprofiles#indexforhr'

  root to: "empprofiles#index"
  # The priority is based upon order of creation:
  # first created -> highest priority.
  resources :homes do
    get 'about'
    get 'contactus'
  end
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
  # root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
