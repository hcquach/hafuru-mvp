class Collaboration < ApplicationRecord
  belongs_to :match
  # belongs_to :matched_gratitude, through: :match
  # belongs_to :matching_gratitude, through: :match
  delegate :matched_gratitude, :matching_gratitude, to: :match

  has_many :collaboration_items
end
