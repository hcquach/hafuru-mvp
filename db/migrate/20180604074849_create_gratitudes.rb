class CreateGratitudes < ActiveRecord::Migration[5.2]
  def change
    create_table :gratitudes do |t|
      t.string :title
      t.string :photo
      t.string :description
      t.references :category, foreign_key: true
      t.references :user, foreign_key: true

      t.timestamps
    end
  end
end
