class RestroomsController < ApplicationController
  def new
  end
  
  def index
  end
  def show
    @restroom = Restroom.find(params[:id]) 
  end
end
