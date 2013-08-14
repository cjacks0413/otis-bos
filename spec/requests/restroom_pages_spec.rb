require 'spec_helper'

describe "RestroomPages" do

  subject { page } 
  
  describe "add restroom page" do
    before { visit new_restroom_path} 
    
    let(:submit) { "Add This Restroom" } 
    
    describe "with invalid information" do
      it "should not create a restroom" do
        expect { click_button submit }.not_to change(Restroom, :count)
      end
    end
    
    describe "with valid information" do 
	  before do
		fill_in "restroom_name", with: "Example B.room"
		fill_in "restroom_line1", with: "112 Alexandria Lane" 
		fill_in "restroom_city", with: "Boston" 
		fill_in "restroom_state", with: "MA"
		fill_in "restroom_zip", with: "02116" 
	  end
	
	  it "should create a restroom" do
		expect { click_button submit }.to change(Restroom, :count).by(1)
	  end 
   end
  
  
	describe "show all restrooms" do 
	  before { visit restrooms_path }    
	  it { should have_content('All Restrooms') } 
	end
  
	describe "restroom page" do 
	  let(:restroom) { FactoryGirl.create(:restroom) }
	  before { visit restroom_path(restroom) } 
	
	  it { should have_content(restroom.name) }
	  it { should have_content(restroom.line1) } 
	end
  end 

end 
