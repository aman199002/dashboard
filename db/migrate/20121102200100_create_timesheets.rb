class CreateTimesheets < ActiveRecord::Migration
  def change
    create_table :timesheets do |t|

      t.timestamps
    end
  end
end
