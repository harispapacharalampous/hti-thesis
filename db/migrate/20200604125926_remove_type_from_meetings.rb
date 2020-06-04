class RemoveTypeFromMeetings < ActiveRecord::Migration[6.0]
  def change
    remove_column :meetings, :type, :string
  end
end
