require 'redmine'

Redmine::Plugin.register :redmine_changeauthor do

  name 'Redmine ChangeAuthor plugin'
  author 'Tom Stark @fragtom'
  description 'Plugin for author change'
  version '0.0.2' 

  settings :default => {
    'change_author' => ''
  }, :partial => 'settings/issues'
  
  permission :change_author, :require => :member
    
end

