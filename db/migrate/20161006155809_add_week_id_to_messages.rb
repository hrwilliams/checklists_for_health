class AddWeekIdToMessages < ActiveRecord::Migration[5.0]
  def change
      add_column :messages, :week_id, :integer
  end
end
