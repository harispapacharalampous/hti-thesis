class RemoveLimitArraysFromUsers < ActiveRecord::Migration[6.0]
  def change
    remove_column :users, :past_ws, :string
    remove_column :users, :past_cs, :string
  end
end
