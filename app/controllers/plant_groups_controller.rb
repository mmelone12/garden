class PlantGroupsController < ApplicationController
  def index
    @plant_groups = PlantGroup.all
  end

  def show
    @plant_group = PlantGroup.find(params[:id])  
    @plants = Plants.all
  end

  def new
    @plant_group = PlantGroup.new
  end

  def create     
    @plant_group = PlantGroup.new(params[:plant_group])  
    if @plant_group.save
      redirect_to @plant_group, :notice => "Successfully created plant group."
    else
      render :action => 'new'
    end
  end

  def edit
    @plant_group = PlantGroup.find(params[:id])
  end   

  def update
    @plant_group = PlantGroup.find(params[:id])
    if @plant_group.update_attributes(params[:project])
      redirect_to @plant_group, :notice  => "Successfully updated plant group."
    else
      render :action => 'edit'
    end
  end

  def destroy
    @plant_group = PlantGroup.find(params[:id])
    @plant_group.destroy
    redirect_to plant_groups_url, :notice => "Successfully destroyed plant group."
  end   
end
