class AddConditionToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :condition, :integer
  end
end
