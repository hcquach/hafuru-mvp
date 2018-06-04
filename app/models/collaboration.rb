class Collaboration < ApplicationRecord
  belongs_to :match
  has_many :collaboration_items
end
