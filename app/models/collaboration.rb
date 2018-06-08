class Collaboration < ApplicationRecord
  belongs_to :match
  delegate :matched_gratitude, :matching_gratitude, to: :match

  has_many :collaboration_items, dependent: :destroy

end
