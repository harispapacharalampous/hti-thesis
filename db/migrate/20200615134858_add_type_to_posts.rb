class AddTypeToPosts < ActiveRecord::Migration[6.0]
  def change
    add_column :posts, :entry_type, :integer
  end
end
