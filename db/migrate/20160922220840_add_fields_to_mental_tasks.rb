class AddFieldsToMentalTasks < ActiveRecord::Migration[5.0]
  def change
    add_column :mental_tasks, :sunday_value, :string
    add_column :mental_tasks, :monday_value, :string
    add_column :mental_tasks, :tuesday_value, :string
    add_column :mental_tasks, :wednesday_value, :string
    add_column :mental_tasks, :thursday_value, :string
    add_column :mental_tasks, :friday_value, :string
    add_column :mental_tasks, :saturday_value, :string
    add_column :mental_tasks, :week_id, :integer 
  end
end
