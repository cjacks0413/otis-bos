class ReviewsController < ApplicationController
  before_action :signed_in_user
  
  def new
	@restroom = Restroom.find(params[:restroom_id]) 
	@review = @restroom.reviews.build
  end
  
  def create
  	@restroom = Restroom.find(params[:restroom_id]) 
    @review = @restroom.reviews.build(review_params) 
    @review.author = current_user.email
    if @review.save
      flash[:success] = "Review created" 
      redirect_to restroom_path(@restroom) 
    else
	  redirect_to new_restroom_review_path(@restroom)  
    end 
  end
  
  def destroy
  end
  
  private 
    
    def review_params
      params.require(:review).permit(:content, :restroom_id) 
    end
end