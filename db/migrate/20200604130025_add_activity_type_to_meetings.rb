class AddActivityTypeToMeetings < ActiveRecord::Migration[6.0]
  def change
    add_column :meetings, :activitytype, :integer
  end
end
