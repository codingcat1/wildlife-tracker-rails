class SightingsController < ApplicationController

  def create
    @sighting = Sighting.create(params[:sightings])
    @species = Species.find(params[:sightings][:species_id])
    redirect_to :back
  end

  def index
    @sightings = Sighting.all
    @species = Species.all
    @regions = Region.all
    if params[:seen_these_animals] != nil
      @sightings = @sightings.where(:date => Date.parse(params[:seen_these_animals][:start_date])..Date.parse(params[:seen_these_animals][:end_date]), :region_id => params[:seen_these_animals][:region_id])

    else
      @sightings = Sighting.all
    end
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
      redirect_to "/sightings"
    else
      render 'sightings/edit.html.erb'
    end
  end

  def show
    edit
  end

end


