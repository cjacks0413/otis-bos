require 'spec_helper'

describe "Static pages" do 
  
  let(:base_title) { 'Boston Public Restrooms' }
  subject { page } 
  
  describe "Home page" do 
    before { visit root_path } 
    
    it { should have_title(' Boston Public Restrooms | Home' ) } 
  #  it { should_not have_title(' #{base_title} | Home') } 
  end
  
  describe "Contact page" do
    before { visit contact_path } 
    
    it { should have_content('Contact') } 
    it { should have_title(' Boston Public Restrooms | Contact') }
  end
  
  describe "About page" do
    before { visit about_path } 
    
    it { should have_content('About') } 
    it { should have_title(' Boston Public Restrooms | About') } 
  end

end 
