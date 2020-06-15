class CreateWaters < ActiveRecord::Migration[6.0]
  def change
    create_table :waters do |t|
      t.integer :measurement_type
      t.integer :quantity
      t.integer :user_id

      t.timestamps
    end
  end
end
