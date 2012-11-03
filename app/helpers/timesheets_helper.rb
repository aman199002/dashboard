module TimesheetsHelper

  def total_time_spent(timesheet)
  	(timesheet.tasks.map(&:time_spent).inject{|time,sum| time+sum}/60.to_f).round(2)
  rescue
    nil	
  end	
end
