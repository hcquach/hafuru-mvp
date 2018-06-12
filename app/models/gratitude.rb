class Gratitude < ApplicationRecord
  mount_uploader :photo, PhotoUploader

  belongs_to :category, optional: true
  belongs_to :user
  belongs_to :collaboration, optional: true

  # Validations
  validates :title, presence: true
  validates :category, presence: true

  include PgSearch
    pg_search_scope :global_search,
      against: [ :title ],
      associated_against: {
        category: [ :name ]
      },
      using: {
        tsearch: { prefix: true }
      }
end
