class PlacesController < ApplicationController

  def index
    @places = Place.all
  
    #render places index view
  render :template => 'places/index'
  end

  def show
    # find a Place
    @place = Place.find_by({ "id" => params["id"] })
    # find Entries for the Place
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render places/show view with entries from the place
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
  
