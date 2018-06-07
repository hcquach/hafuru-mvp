class Match < ApplicationRecord
  belongs_to :matching_gratitude, class_name: :Gratitude, foreign_key: :matching_gratitude_id
  belongs_to :matched_gratitude, class_name: :Gratitude, foreign_key: :matched_gratitude_id

  has_one :collaboration

  validates :matching_gratitude, presence: true
  validates :matched_gratitude, presence: true
  after_create :configure_collaboration

  def configure_collaboration
    collaboration = Collaboration.create(match: self)
    CollaborationItem.create(collaboration: collaboration)
  end
end
