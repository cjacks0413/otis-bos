FactoryGirl.define do 
  factory :restroom do
	name   "Boston Visitors Center"
	line1  "148 Tremont St."
	city   "Boston"
	state  "MA"
	zip	 "02116" 
  end  
  
  factory :review do
    author "Djan Jackson" 
    content "Lorem ipsum" 
    restroom 
  end
end

FactoryGirl.define do
  factory :user do 
 	name "Djan Jackson" 
 	email "djan.jackson@example.com" 
	password "foobar"
	password_confirmation "foobar" 
  end 
end

