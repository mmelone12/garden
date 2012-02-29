class PrelationshipsController < ApplicationController
   
  def create          
    @project = Project.find(params[:project_id])                                 
    params[:prelationship][:pfollower_id].each do |p|
      @project.pfollow!( Plant.find(p) )   
    end
    respond_to do |format|
      format.html { redirect_to @project }
      format.js   
    end
  end    
end