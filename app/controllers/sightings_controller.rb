class SightingsController < ApplicationController

  def create
    @sighting = Sighting.create(params[:sightings])
    @species = Species.find(params[:sightings][:species_id])
    redirect_to :back
  end

  def index
    @sightings = Sighting.all
    @species = Species.all
    render('sightings/index.html.erb')
  end

  def destroy
    @sightings = Sighting.find(params[:id])
    @sightings.destroy
    redirect_to :back
  end

  def edit
    @sighting = Sighting.find(params[:id])
    @all_regions = Region.all
    render('sightings/edit.html.erb')
  end

  def update
    @sighting = Sighting.find(params[:id])
    if @sighting.update(params[:sightings])
      index
    else
      edit
    end
  end

end


