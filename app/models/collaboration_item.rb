class CollaborationItem < ApplicationRecord
  belongs_to :collaboration
  belongs_to :matching_user_gratitude, class_name: :Gratitude, foreign_key: :matching_user_gratitude_id, optional: true
  belongs_to :matched_user_gratitude, class_name: :Gratitude, foreign_key: :matched_user_gratitude_id, optional: true

  after_create :configure_collaboration_item

  def configure_collaboration_item
    if self.matched_user_gratitude_id && self.matching_user_gratitude_id
      CollaborationItem.create(collaboration: collaboration)
      authorize @collaboration_item
    end
  end
end
