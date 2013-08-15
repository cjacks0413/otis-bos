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
    @restrooms = Restroom.all 
  end
  
  def show
    @restroom = Restroom.find(params[:id]) 
  end
  
  def search
    @params = params[:search] 
     #add validations for search form 
    @restrooms = Restroom.search(params[:search])
  end 
  
  private
    
    def restroom_params
      params.require(:restroom).permit(:name, :line1, :line2, :city, :state, :zip)
      
    end
    
end
