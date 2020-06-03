class AddCoffeelimitToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :coffeelimit2, :integer, default: 3
  end
end
