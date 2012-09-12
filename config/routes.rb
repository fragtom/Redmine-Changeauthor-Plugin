ActionController::Routing::Routes.draw do |map|
  map.connect '/changeauthor/index', :controller => 'changeauthor', :action => 'index'
  map.connect '/changeauthor/edit', :controller => 'changeauthor', :action => 'edit'
end