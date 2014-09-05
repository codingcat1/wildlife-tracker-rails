class RegionsController < ApplicationController

  def create
    @region = Region.create(params[:region])
    redirect_to :back
  end

end
