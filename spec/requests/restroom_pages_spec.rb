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
  
#   describe "show one restroom" do 
#     before { visit restroom_path(@restroom) } 
#     
#     it { should have_content(#{restroom.name}) 
#   end
  

end
