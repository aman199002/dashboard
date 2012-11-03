namespace :insert_data do
  desc "Create Projects"
  task :projects => :environment do
    Project.destroy_all
  	Project.create(:name => 'First')
  	Project.create(:name => 'Second')
  	Project.create(:name => 'Third')
  	Project.create(:name => 'Fourth')
  	Project.create(:name => 'Fifth')
  	Project.create(:name => 'Others')
  end

  desc "Create Task Types"
  task :task_types => :environment do
    Task.destroy_all
  	TaskType.create(:name => 'Analysis')
  	TaskType.create(:name => 'Coding')
  	TaskType.create(:name => 'Documentaion')
    TaskType.create(:name => 'Research')
  	TaskType.create(:name => 'Training')
  	TaskType.create(:name => 'Others')
  end	
end