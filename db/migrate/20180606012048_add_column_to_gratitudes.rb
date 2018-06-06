class AddColumnToGratitudes < ActiveRecord::Migration[5.2]
  def change
    add_column :gratitudes, :match_status, :boolean, default: false
  end
end
