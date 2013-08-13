class Restroom < ActiveRecord::Base
  validates :name, presence: true, length: { maximum: 50 }
  validates :line1, presence: true, length: { maximum: 50 }
  validates :line2, length: { maximum: 50 }, allow_blank: true  
  validates :city, presence: true, length: { maximum: 50 } 
  validates :state, presence: true, length: { is: 2 }  
  validates :zip, presence: true, format: { with: /\A\d{5}(?:[-\s]\d{4})?\z/ } 
end
