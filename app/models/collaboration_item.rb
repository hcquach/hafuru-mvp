class CollaborationItem < ApplicationRecord
  belongs_to :collaboration
  belongs_to :matching_user_gratitude, class_name: :Gratitude, foreign_key: :matching_user_gratitude_id
  belongs_to :matched_user_gratitude, class_name: :Gratitude, foreign_key: :matched_user_gratitude_id

  validates :matching_user_gratitude, presence: true
  validates :matched_user_gratitude, presence: true
end
