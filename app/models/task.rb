class Task < ActiveRecord::Base
  belongs_to :timesheet
  belongs_to :project
  belongs_to :task_type
  attr_accessible :description, :project_id, :task_type_id, :time_spent
  validates :project_id,:task_type_id,:time_spent,:description, presence: true
end
