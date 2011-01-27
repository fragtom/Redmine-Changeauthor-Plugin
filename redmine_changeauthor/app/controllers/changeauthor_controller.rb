class ChangeauthorController < ApplicationController
  unloadable     
  
  layout 'admin'
  
  def index

    @issue=Issue.find_by_id(params[:issue_id])
    
    @project = Project.find(@issue.project_id)
    
    @users = @project.member_principals.find(:all, :include => [:roles, :principal], :order => "firstname", :conditions => "#{Principal.table_name}.type='User'")

    @issue_user=User.find(@issue["author_id"])
    
  end

    
  def edit
    
    @issue=Issue.find_by_id(params[:issue_id])
    
    if @issue.update_attribute(:author_id, params[:authorid])
      flash[:notice] = l(:notice_successful_update)
      redirect_to :controller => "issues", :action => "show", :id => params[:issue_id]
    else
      redirect_to :controller => "changeauthor", :action => "edit", :id => params[:issue_id]
    end
    
  end
  
  private
  
  def find_and_destroy_relation(id)
   
   H4prelation.delete_all(["project_identifier = ?", id]) 
   
  end
  
 
end
