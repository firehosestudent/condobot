class Photo < ApplicationRecord



  belongs_to :user
  belongs_to :condo

  mount_uploader :condoimage, CondoimagesUploader

end
