class DropPhysicalLists < ActiveRecord::Migration[5.0]
  def change
    drop_table :physical_lists do |t|
      t.string   "description"
      t.integer  "day_id"
      t.datetime "created_at",  null: false
      t.datetime "updated_at",  null: false
    end
  end
end
