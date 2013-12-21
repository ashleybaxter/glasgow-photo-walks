class Walk < ActiveRecord::Base
	geocoded_by :address

	after_validation :geocode
	
	def duration
	  e = end_time.strftime("%k:%M")
	  s = start_time.strftime("%k:%M")
	  (e.to_time - s.to_time) / 3600
  end
end
