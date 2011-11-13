class ProjectsController < ApplicationController
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])        
    @plant_group = @project.plant_group
  end

  def new
    @project = Project.new          
  end

  def create
    @project = Project.new(params[:project])     
    @plant_group = @project.plant_group
    if @project.save
      redirect_to :controller=>'plant_groups', :action => 'new', :id => @plant_group
    else
      render :action => 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])     
    @plant_group = @project.plant_group
  end   

  def update
    @project = Project.find(params[:id])  
    @plant_group = @project.plant_group
    if @project.update_attributes(params[:project])
      redirect_to @project, :notice  => "Successfully updated project."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url, :notice => "Successfully destroyed project."
  end   
end
