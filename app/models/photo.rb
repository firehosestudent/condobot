class Photo < ApplicationRecord
  belongs_to :user
  belongs_to :condo
end
