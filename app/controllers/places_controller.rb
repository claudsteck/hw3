class PlacesController < ApplicationController

  def index
    @places = Place.all
  
    #render places index view
  render :template => 'places/index'
  end

  def new
    # render view with new places form
  end

  def create
    # start with a new place
    @place = Place.new

    # assign user-entered form data to columns
    @place["name"] = params["name"]
    
    # save  row
    @place.save

    # redirect user
    redirect_to "/places"
  end
end
  
