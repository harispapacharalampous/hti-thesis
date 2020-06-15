class RemoveCurrentsFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :curr_w, :integer
    remove_column :users, :curr_c, :integer
  end
end
