class AddDateToTimesheets < ActiveRecord::Migration
  def change
    add_column :timesheets, :date, :date
  end
end
