class StupidMeasure

	def call_me_now(i)
		time_from = '2015-10-25T08:54:12Z'

		from_date = Time.iso8601(time_from).strftime("%Y%m%dT%H%M%S")
    puts "[#{i}] #{from_date}"
    period_start_date = OpenStudio::DateTime.fromISO8601(from_date).get.date
    puts "[#{i}] #{period_start_date.object_id}"
    puts "[#{i}] #{period_start_date.year}:#{period_start_date.monthOfYear.value}.#{period_start_date.dayOfMonth}"
    puts "[#{i}] #{period_start_date.year}:#{period_start_date.monthOfYear.value}.#{period_start_date.dayOfMonth}"
    puts "[#{i}] #{period_start_date.year}:#{period_start_date.monthOfYear.value}.#{period_start_date.dayOfMonth}"
    puts "[#{i}] #{period_start_date.year}:#{period_start_date.monthOfYear.value}.#{period_start_date.dayOfMonth}"
    puts "[#{i}] #{period_start_date.year}:#{period_start_date.monthOfYear.value}.#{period_start_date.dayOfMonth}"
 
	end
end
