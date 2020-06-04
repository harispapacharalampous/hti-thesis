class AddPrefsToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :walkpref, :integer
    add_column :users, :commutepref, :integer
  end
end
