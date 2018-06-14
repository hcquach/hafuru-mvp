class Match < ApplicationRecord
  belongs_to :matching_gratitude, class_name: :Gratitude, foreign_key: :matching_gratitude_id
  belongs_to :matched_gratitude, class_name: :Gratitude, foreign_key: :matched_gratitude_id

  has_one :collaboration, dependent: :destroy

  validates :matching_gratitude, presence: true
  validates :matched_gratitude, presence: true
  after_create :create_collaboration
  before_destroy :turn_off_match_status

  def create_collaboration
    puts "------------------------------- create_collaboration"
    collaboration = Collaboration.create!(match: self)
    CollaborationItem.create!(collaboration: collaboration,matching_user_gratitude: matching_gratitude, matched_user_gratitude: matched_gratitude)
    CollaborationItem.create!(collaboration: collaboration)
  end

  def turn_off_match_status
    if !matching_gratitude.blank?
      matching_gratitude.match_status = false
      matching_gratitude.save
    end
    if !matched_gratitude.blank?
      matched_gratitude.match_status = false
      matched_gratitude.save
    end
  end
end
