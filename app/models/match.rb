class Match < ApplicationRecord
  belongs_to :matching_gratitude, class_name: :Gratitude, foreign_key: :matching_gratitude_id
  belongs_to :matched_gratitude, class_name: :Gratitude, foreign_key: :matched_gratitude_id

  has_one :collaboration, dependent: :destroy

  validates :matching_gratitude, presence: true
  validates :matched_gratitude, presence: true
  after_create :configure_collaboration
  before_destroy :turn_off_match_status

  def configure_collaboration
    puts "------------------------------- configure_collaboration"
    collaboration = Collaboration.create!(match: self)
    CollaborationItem.create!(collaboration: collaboration)
  end

  def turn_off_match_status
    matching_gratitude.match_status = false
    matching_gratitude.save
    matched_gratitude.match_status = false
    matched_gratitude.save
  end
end
