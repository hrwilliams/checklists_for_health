class CreatePhysicalLists < ActiveRecord::Migration[5.0]
  def change
    create_table :physical_lists do |t|
      t.column :description, :string
      t.column :day_id, :integer

      t.timestamps
    end
  end
end
