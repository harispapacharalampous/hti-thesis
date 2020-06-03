class RemoveLimitsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :climit, :integer
  end
end
