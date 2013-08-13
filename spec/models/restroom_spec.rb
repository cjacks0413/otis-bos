require 'spec_helper'

describe Restroom do
  
  before do 
    @restroom = Restroom.new(name: "Starbucks", line1: "123 Powderhouse Square", 
    		line2: "", city: "Medford", state: "MA", zip: "02144")  
  end
  
  subject { @restroom } 
  
  it { should respond_to(:name) } 
  it { should respond_to(:line1) }
  it { should respond_to(:line2) }
  it { should respond_to(:city) }
  it { should respond_to(:state) }
  it { should respond_to(:zip) }

  it { should be_valid } 
  
  describe "when name is not present" do 
    before { @restroom.name = " " } 
    it { should_not be_valid } 
  end
  
  describe "when name is too long" do
    before { @restroom.name = "a" * 51 }
    it { should_not be_valid } 
  end
  
  describe "when city is too long" do
    before { @restroom.city = "a" * 51 } 
    it { should_not be_valid } 
  end
  
  describe "when state is not right length" do
    before { @restroom.state = "a" * 3 }
    it { should_not be_valid } 
  end
  
  describe "when zip is not right length" do
    before { @restroom.zip = "12453 324" } 
    it { should_not be_valid } 
  end
  
end
