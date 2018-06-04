class CreateMatches < ActiveRecord::Migration[5.2]
  def change
    create_table :matches do |t|
      t.bigint :matching_gratitude_id
      t.bigint :matched_gratitude_id

      t.timestamps
    end
    add_index :matches, :matching_gratitude_id
    add_index :matches, :matched_gratitude_id
  end
end
