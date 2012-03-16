class ProjectsController < ApplicationController      
  
  def index
    @projects = Project.all
  end

  def show
    @project = Project.find(params[:id])   
    @plants = @project.pfollowing.paginate(:page => params[:page])   
  end

  def new
    @project = Project.new          
  end

  def create
    @project = Project.new(params[:project])     
    if @project.save
      redirect_to @project, :notice => "Now let's assemble your garden!"
    else
      render 'new'
    end
  end

  def edit
    @project = Project.find(params[:id])     
  end   

  def update
    @project = Project.find(params[:id])  
    if @project.update_attributes(params[:project])
      redirect_to @project, :notice  => "Successfully updated project."
    else
      render :action => 'edit'
    end
  end                   
  
  def instructions
    @project = Project.find(params[:id]) 
    @plants = @project.pfollowing.paginate(:page => params[:page]) 
    render 'instructions'
  end

  def destroy
    @project = Project.find(params[:id])
    @project.destroy
    redirect_to projects_url, :notice => "Successfully destroyed project."
  end 
  
  def pfollowing
    @title = "Pfollowing"
    @project = Project.find(params[:id])
    @plants = @plant.pfollowing.paginate(:page => params[:page])
    render 'show_pfollow'
  end    
  
  def pfollowers
    @title = "Pfollowers"
    @project = Project.find(params[:id])
    @plants = @plant.pfollowers.paginate(:page => params[:page])
    render 'show_pfollow'
  end
end