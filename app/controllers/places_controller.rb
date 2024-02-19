class PlacesController < ApplicationController

  def index
    @places = Place.all
    #render places index view

  end

  def show
    # find a Place
    @place = Place.find_by({"id" => params["id"]})
    @entries = Entry.where({ "place_id" => @place["id"] })
    # render companies/show view with details about Company
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
  
