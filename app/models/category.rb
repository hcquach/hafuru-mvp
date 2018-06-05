class Category < ApplicationRecord
  # Upload photo
  mount_uploader :photo, PhotoUploader

  has_many :gratitudes

end
