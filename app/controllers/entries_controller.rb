class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    render :template => 'entries/index'
  end
  
  def new
    @entry = Entry.new
    # render new view with new entry form
  end

  def show
    @place = Place.find_by({"id" => params["id"]})
    @entry = Entry.find_by({"place_id" => @place["id"]})
    # render entries/show view with details about place
  end


  def create
    # start with a new Post
    @entry = Entry.new

#   # assign user-entered form data to the entry's columns
@entry["title"] = params["title"]
@entry["description"] = params["description"]
@entry["posted_on"] = params["posted_on"]
@entry["place_id"] = params["place_id"]
#   # save Post row
@entry.save
#   # redirect user
redirect_to "/entries/#{@places["place_id"]}"
end
