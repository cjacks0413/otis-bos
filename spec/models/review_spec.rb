require 'spec_helper'

describe Review do
  
  let(:restroom) { FactoryGirl.create(:restroom) } 
  before do 
    @review = Review.new(author: "pj@example.com", content: "it was very nice.", 
     					 restroom_id: restroom.id) 
  end
  
  subject { @review }
   
  it { should respond_to(:author) } 
  it { should respond_to(:content) } 
  it { should respond_to(:restroom_id) } 
  it { should respond_to(:restroom) } 
  its(:restroom) { should eq restroom } 
    
  it { should be_valid } 
  
  describe "when restroom_id is not present" do
    before { @review.restroom_id = nil } 
    it { should_not be_valid } 
  end 
  
  describe "with blank content" do
    before { @review.content= " " } 
    it { should_not be_valid } 
  end 
  
  describe "with blank user" do
    before { @review.content= " " } 
    it { should_not be_valid } 
  end
  
  describe "when user is signed in" do
  end
  
  describe "when user is signed out" do
  end
  
end
