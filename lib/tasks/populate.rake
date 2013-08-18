namespace :db do
  desc "Fill database" 
  task :populate => :environment do
    require 'populator'
    require 'faker' 
    
    Restroom.populate 100 do |restroom| 
      restroom.name = Faker::Name.name 
      restroom.line1 = Faker::Address.street_address
      restroom.city = Faker::Address.city
      restroom.state = Faker::Address.state_abbr
      restroom.zip = Faker::Address.zip_code 
    end 
  end 
end 

    				 
    