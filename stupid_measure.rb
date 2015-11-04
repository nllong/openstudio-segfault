class StupidMeasure

	def call_me_now(i)
		time_from = '2015-10-25T08:54:12Z'
		start_date = OpenStudio::Date.new(OpenStudio::MonthOfYear.new(10), 15, 2015 )

		from_date = Time.iso8601(time_from).strftime("%Y%m%dT%H%M%S")
	    period_start_date = OpenStudio::DateTime.fromISO8601(from_date).get.date
	    period_end_date = OpenStudio::DateTime.fromISO8601(from_date).get.date - OpenStudio::Time.new(1.0)
	    puts "[#{i}] #{period_start_date}:#{period_start_date.class}"
	    puts "[#{i}] #{period_end_date}:#{period_end_date.class}"
	 
	    if period_start_date > start_date
	      puts "[#{i}] Period Start Date is greater than Start Date"
	    end
	end
end
