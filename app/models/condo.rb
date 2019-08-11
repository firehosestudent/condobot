class Condo < ApplicationRecord

  belongs_to :user
  has_many :photos


  geocoded_by :address  
  after_validation :geocode

end
