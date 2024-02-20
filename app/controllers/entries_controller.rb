class EntriesController < ApplicationController
  
  def new
    @place = Place.find_by(params["place_id"])
    @entry = Entry.new

  end
  
  def create
    # start with a new Post
    @entry = Entry.new

  #   # assign user-entered form data to the entry's columns
    @entry["title"] = params["title"]
    @entry["description"] = params["description"]
    @entry["posted_on"] = params["posted_on"]
   
    ## assign relationship between entry and place
    @entry["place_id"] = params["place_id"]
  #   # save Post row
    @entry.save

  #   # redirect user
    redirect_to "/places/"
    end
  end