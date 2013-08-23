require 'spec_helper'

describe "ReviewPages" do

  subject { page } 
  
  let(:restroom) { FactoryGirl.create(:restroom) } 
  let(:user) { FactoryGirl.create(:user) } 
  before { sign_in user } 
  
  describe "create a review" do
	before { visit restroom_path(restroom) } 
	
	describe "with invalid information" do 
	
	  it "should not create a micropost" do
	    expect { click_button "Review"}.not_to change(Review, :count) 
	  end 
	  
	  describe "error messages" do
	    before { click_button "Review" } 
	    it { should have_content('error') } 
	  end
	end
	
	describe "with valid information" do 
	  before { fill_in 'review_content', with: "Lorem Ipsum" } 
	  it "should create a review" do
	    expect { click_button "Review" }.to change(Review, :count).by(1) 
	  end
	end 
  end
  
end
