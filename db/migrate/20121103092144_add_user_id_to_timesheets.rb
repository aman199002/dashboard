class AddUserIdToTimesheets < ActiveRecord::Migration
  def change
    add_column :timesheets, :user_id, :integer
  end
end
