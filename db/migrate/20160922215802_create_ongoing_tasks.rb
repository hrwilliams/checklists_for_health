class CreateOngoingTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :ongoing_tasks do |t|
      t.column :description, :string
      t.column :done_value, :string
      t.column :week_id, :integer

      t.timestamps
    end
  end
end
