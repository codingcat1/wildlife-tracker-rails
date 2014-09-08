class SpeciesController < ApplicationController
  def index
    @species = Species.all
    render('species/index.html.erb')
  end

  # def new
  #   @species = Species.new(params[:species])
  #   render('species/index.html.erb')
  # end

  def create
    @species = Species.create(params[:species])
    redirect_to '/species'
  end

  def edit
    @species = Species.find(params[:id])
    render('species/edit.html.erb')
  end

  def show
    @species = Species.find(params[:id])
    @all_species =Species.all
    @sightings = Sighting.all
    @all_regions = Region.all
    render('species/show.html.erb')
  end

  def update
    @species = Species.find(params[:id])
    if @species.update(params[:species])
      redirect_to '/species'
    else
      render('species/edit.html.erb')
    end
  end

  def destroy
    @species = Species.find(params[:id])
    @species.destroy
    index
  end
end
