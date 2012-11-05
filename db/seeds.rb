# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


# "find_or_create_by_name Projects"  
Project.find_or_create_by_name('First')
Project.find_or_create_by_name('Second')
Project.find_or_create_by_name('Third')
Project.find_or_create_by_name('Fourth')
Project.find_or_create_by_name('Fifth')
Project.find_or_create_by_name('Others')
  

 # desc "find_or_create_by_name Task Types"  
TaskType.find_or_create_by_name('Analysis')
TaskType.find_or_create_by_name('Coding')
TaskType.find_or_create_by_name('Documentaion')
TaskType.find_or_create_by_name('Research')
TaskType.find_or_create_by_name('Training')
TaskType.find_or_create_by_name('Others')  