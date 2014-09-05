class RegionsController < ApplicationController

  def create
    @region = Region.create(params[:regions])
    redirect_to :back
  end

end
