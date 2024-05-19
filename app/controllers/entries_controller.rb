class EntriesController < ApplicationController
  def new
    @entry = Entry.new
  end

  def create
    @entry = Entry.new(params["entry"])
    @entry.save
    redirect_to '/places/' + params["entry"]["place_id"]
  end
end
