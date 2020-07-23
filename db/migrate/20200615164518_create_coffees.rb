class CreateCoffees < ActiveRecord::Migration[6.0]
  def change
    create_table :coffees do |t|
      t.integer :measurement_type
      t.integer :quantity

      t.timestamps
    end
  end
end
