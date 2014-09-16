Cae::Application.routes.draw do 
  root to: "home#index"
  devise_for :usuarios
  resources :usuarios
  resources :setors
  resources :requisicaos
  resources :bolsas
  match 'bolsas/:id/finalizar_bolsa' => 'bolsas#finalizar_bolsa', :as => :finalizar_bolsa
  match 'bolsas/:id/edit_finalizar_bolsa' => 'bolsas#edit_finalizar_bolsa', :as => :edit_finalizar_bolsa
  resources :cursos
  resources :contas
  resources :bancos
  resources :bolsistas do
    resources :anexos
  end
  match 'bolsistas/:id/bolsista_curso' => 'bolsistas#bolsista_curso', :as => :bolsista_curso
  match 'bolsistas/:id/edit_bolsista_curso' => 'bolsistas#edit_bolsista_curso', :as => :edit_bolsista_curso
end 






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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
  


