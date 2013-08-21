class RestroomsController < ApplicationController
  before_action :signed_in_user, only: [:create, :new]  

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
    @restrooms = Restroom.paginate(page: params[:page]) 
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
    
    def signed_in_user
      store_location
      redirect_to signin_url, notice: "Please sign in." unless signed_in? 
    end
    
end
