RedmineApp::Application.routes.draw do 
  get '/changeauthor/index', :to => 'changeauthor#index'
  post '/changeauthor/edit', :to => 'changeauthor#edit'
end
