namespace :insert_data do
  desc "Find or create new Projects"
  task :projects => :environment do    
  	Project.find_or_create_by_name('First')
  	Project.find_or_create_by_name('Second')
  	Project.find_or_create_by_name('Third')
  	Project.find_or_create_by_name('Fourth')
  	Project.find_or_create_by_name('Fifth')
  	Project.find_or_create_by_name('Others')
  end

  desc "Find or create new Task Types"
  task :task_types => :environment do    
  	TaskType.find_or_create_by_name('Analysis')
  	TaskType.find_or_create_by_name('Coding')
  	TaskType.find_or_create_by_name('Documentaion')
    TaskType.find_or_create_by_name('Research')
  	TaskType.find_or_create_by_name('Training')
  	TaskType.find_or_create_by_name('Others')
  end	
end