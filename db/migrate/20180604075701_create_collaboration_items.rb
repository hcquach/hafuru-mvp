class CreateCollaborationItems < ActiveRecord::Migration[5.2]
  def change
    create_table :collaboration_items do |t|
      t.references :collaboration, foreign_key: true
      t.bigint :matched_user_gratitude_id
      t.bigint :matching_user_gratitude_id
      t.timestamps
    end
    add_index :collaboration_items, :matched_user_gratitude_id
    add_index :collaboration_items, :matching_user_gratitude_id
  end
end
