class CollaborationItem < ApplicationRecord
  belongs_to :collaboration
  belongs_to :matching_user_gratitude, class_name: :Gratitude, foreign_key: :matching_user_gratitude_id, optional: true
  belongs_to :matched_user_gratitude, class_name: :Gratitude, foreign_key: :matched_user_gratitude_id, optional: true


  after_create :update_collaboration_status

  def update_collaboration_status
    if CollaborationItem.where(collaboration_id: collaboration.id).count >= 0
      collaboration.status = 0
    elsif CollaborationItem.where(collaboration_id: collaboration.id).count >= 5
      collaboration.status = 1
    elsif CollaborationItem.where(collaboration_id: collaboration.id).count >= 10
      collaboration.status = 2
    elsif CollaborationItem.where(collaboration_id: collaboration.id).count >= 20
      collaboration.status = 3
    elsif CollaborationItem.where(collaboration_id: collaboration.id).count = 30
      collaboration.status = 4
    end
    collaboration.save
  end
end
