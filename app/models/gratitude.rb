class Gratitude < ApplicationRecord
  # Upload photo
  mount_uploader :photo, PhotoUploader

  belongs_to :category, optional: true
  belongs_to :user
  belongs_to :collaboration, optional: true

  # Validations
  validates :title, presence: true
end
