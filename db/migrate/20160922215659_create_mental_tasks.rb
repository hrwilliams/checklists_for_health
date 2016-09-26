class CreateMentalTasks < ActiveRecord::Migration[5.0]
  def change
    create_table :mental_tasks do |t|
      t.column :description, :string
      t.column :sunday_value, :string
      t.column :monday_value, :string
      t.column :tuesday_value, :string
      t.column :wednesday_value, :string
      t.column :thursday_value, :string
      t.column :friday_value, :string
      t.column :saturday_value, :string
      t.column :week_id, :integer

      t.timestamps
    end
  end
end
