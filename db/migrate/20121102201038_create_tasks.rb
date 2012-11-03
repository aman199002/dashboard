class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.integer :project_id
      t.integer :task_type_id
      t.text :description
      t.integer :timesheet_id
      t.integer :time_spent

      t.timestamps
    end
  end
end
