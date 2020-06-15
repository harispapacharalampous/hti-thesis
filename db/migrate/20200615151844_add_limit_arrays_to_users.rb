class AddLimitArraysToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :curr_w, :integer
    add_column :users, :curr_c, :integer
    add_column :users, :past_ws, :string, array: true, default: []
    add_column :users, :past_cs, :string, array: true, default: []
  end
end
