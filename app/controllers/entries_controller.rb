class EntriesController < ApplicationController
  def index
    @entries = Entry.all
    render :template => 'entries/index'
  end
end
