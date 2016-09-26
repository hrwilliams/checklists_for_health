class DropDays < ActiveRecord::Migration[5.0]
  def change
    drop_table :days do |t|
      t.string   "day_of_week"
      t.integer  "week_id"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end  
  end
end
