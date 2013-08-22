class Review < ActiveRecord::Base
  belongs_to :restroom 
  validates :restroom_id, presence: true
  validates :content, presence: true
  validates :author, presence: true  
end
