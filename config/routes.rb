ActionController::Routing::Routes.draw do |map|
  # sets home page
  map.root :controller => 'pages', :action => 'home' 
  
  # Pretty routes for pages controller 
  map.company '/company', :controller => 'pages', :action => 'company' 
  map.products '/products', :controller => 'pages', :action => 'products' 
  map.income '/income', :controller => 'pages', :action => 'income' 
  map.terms '/terms', :controller => 'pages', :action => 'terms' 
  map.sitemap '/sitemap', :controller => 'pages', :action => 'sitemap' 
  map.privacy '/privacy', :controller => 'pages', :action => 'privacy' 
  map.contact '/contact', :controller => 'pages', :action => 'contact' 
  
  # restful auth routes
  map.login '/login', :controller => 'sessions', :action => 'new'
  map.logout '/logout', :controller => 'sessions', :action => 'destroy'
  map.connect ':controller/:action/:id'
  map.connect ':controller/:action/:id.:format'
end
