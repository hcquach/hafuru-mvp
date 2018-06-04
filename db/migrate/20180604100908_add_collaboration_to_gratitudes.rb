class AddCollaborationToGratitudes < ActiveRecord::Migration[5.2]
  def change
    add_reference :gratitudes, :collaboration, foreign_key: true
  end
end
