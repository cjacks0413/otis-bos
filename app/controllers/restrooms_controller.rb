class RestroomsController < ApplicationController
  def new
    @restroom = Restroom.new 
  end
  
  def create
    @restroom = Restroom.new(restroom_params)
    if @restroom.save
     redirect_to @restroom
    else
      render 'new'
    end 
  end 
  
  def index
  end
  
  def show
    @restroom = Restroom.find(params[:id]) 
  end
  
  private
    
    def restroom_params
      params.require(:restroom).permit(:name, :line1, :line2, :city, :state, :zip)
      
    end
    
end
