require 'spec_helper'

describe "RestroomPages" do

  subject { page } 
  
  describe "add restroom page" do
    before { visit new_restroom_path} 
    
    it { should have_content('Add Restroom') }    
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
