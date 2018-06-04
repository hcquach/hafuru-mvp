class CreateCollaborations < ActiveRecord::Migration[5.2]
  def change
    create_table :collaborations do |t|
      t.string :status
      t.integer :length, default: 30
      t.references :match, foreign_key: true

      t.timestamps
    end
  end
end
