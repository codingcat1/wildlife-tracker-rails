class SightingsController < ApplicationController

  def create
    @sighting = Sighting.create(params[:sightings])
    @species = Species.find(params[:sightings][:species_id])
    redirect_to :back
  end

  def index
    @sightings = Sighting.all
    render('sightings/index.html.erb')
  end

end


