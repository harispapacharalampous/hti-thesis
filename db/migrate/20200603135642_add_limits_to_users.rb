class AddLimitsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :climit, :integer
  end
end
