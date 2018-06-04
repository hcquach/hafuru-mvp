class Match < ApplicationRecord
  belongs_to :matching_gratitude, class_name: :Gratitude, foreign_key: :matching_gratitude_id
  belongs_to :matched_gratitude, class_name: :Gratitude, foreign_key: :matched_gratitude_id

  has_many :collaborations

  validates :matching_gratitude, presence: true
  validates :matched_gratitude, presence: true
end
