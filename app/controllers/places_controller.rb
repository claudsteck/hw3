class PlacesController < ApplicationController

  def index
    @places = Place.all
  #render places index view
  render :template => 'places/index'
  end

end
