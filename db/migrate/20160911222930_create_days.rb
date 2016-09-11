class CreateDays < ActiveRecord::Migration[5.0]
  def change
    create_table :days do |t|
      t.column :day_of_week, :string
      t.column :week_id, :integer

      t.timestamps
    end
  end
end
