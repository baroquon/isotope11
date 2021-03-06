ActionController::Routing::Routes.draw do |map|
  map.resources :posts

  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.signup '/signup', :controller => 'users', :action => 'new'
  map.resources :users

  map.resource :session

  map.new_contact '/contact/new', :controller => 'contact', :action => 'new', :conditions => { :method => :get }
  map.contact '/contact', :controller => 'contact', :action => 'new', :conditions => { :method => :get }
  map.contact '/contact', :controller => 'contact', :action => 'create', :conditions => { :method => :post }
  # sets home page
  map.root :controller => 'pages', :action => 'home' 
  
  # restful auth routes
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
  
end
