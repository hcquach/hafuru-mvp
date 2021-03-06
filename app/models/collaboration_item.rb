class CollaborationItem < ApplicationRecord
  belongs_to :collaboration
  belongs_to :matching_user_gratitude, class_name: :Gratitude, foreign_key: :matching_user_gratitude_id, optional: true
  belongs_to :matched_user_gratitude, class_name: :Gratitude, foreign_key: :matched_user_gratitude_id, optional: true


  after_create :update_collaboration_status
  # before_create :checking_last_item

  # def checking_last_item?
  #   if (collaboration.collaboration_items.last.created_at.time - self.created_at.time) >= 1
  #   end
  # end

  def update_collaboration_status
    if collaboration.collaboration_items.count >= 30
      collaboration.status = 4
    elsif collaboration.collaboration_items.count >= 20
      collaboration.status = 3
    elsif collaboration.collaboration_items.count >= 10
      collaboration.status = 2
    elsif collaboration.collaboration_items.count >= 5
      collaboration.status = 1
    elsif collaboration.collaboration_items.count >= 0
      collaboration.status = 0
    end
    collaboration.save
  end
end
