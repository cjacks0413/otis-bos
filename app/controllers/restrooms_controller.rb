class RestroomsController < ApplicationController
  def new
  end
  
  def show
    @restroom = Restroom.find(params[:id]) 
  end
end
