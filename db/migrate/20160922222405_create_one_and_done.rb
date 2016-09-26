class CreateOneAndDone < ActiveRecord::Migration[5.0]
  def change
    create_table :one_and_dones do |t|
      t.column :description, :string
      t.column :done_value, :boolean
      t.column :week_id, :integer

      t.timestamps    
    end
  end
end
