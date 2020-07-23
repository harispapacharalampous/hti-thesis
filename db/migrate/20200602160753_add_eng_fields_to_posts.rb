class AddEngFieldsToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :affect, :integer
    add_column :posts, :entertainment, :integer
  end
end
