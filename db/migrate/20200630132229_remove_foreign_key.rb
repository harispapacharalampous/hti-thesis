class RemoveForeignKey < ActiveRecord::Migration[6.0]
  def change
      # remove the old foreign_key
    remove_foreign_key :posts, :users
  end
end
