class Timesheet < ActiveRecord::Base  
  has_many :tasks, :dependent => :destroy
  belongs_to :user
  accepts_nested_attributes_for :tasks, :allow_destroy => true
  attr_accessible :tasks_attributes, :date, :user_id
  validates :date, presence: true  
end
