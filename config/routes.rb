ActionController::Routing::Routes.draw do |map|
  map.resources :site_templates
  map.resources :posts

  # See how all your routes lay out with "rake routes"
  map.root :controller => :posts

  # Install the default routes as the lowest priority.
  # Note: These default routes make all actions in every controller accessible via GET requests. You should
  # consider removing or commenting them out if you're using named routes and resources.
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
