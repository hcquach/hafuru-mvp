class ChangeStatusDataTypeInCollaborations < ActiveRecord::Migration[5.2]
  def change
    change_column :collaborations, :status, 'integer USING CAST(status AS integer)', default: 0
  end
end
