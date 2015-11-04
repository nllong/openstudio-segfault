require 'time'
require 'openstudio'
require 'parallel'
 
puts 'creating threads'
threads = []
 
 
# (1..100).each do |i|
#   threads << Thread.new do
#     # puts Time.new.class
#     #puts OpenStudio::DateTime.new.class
#     require_relative 'stupid_measure'

#     a = StupidMeasure.new
#     puts a.call_me_now(i)

#     #fail "NOT OPENSTUDIO CLASS" unless period_end_date === OpenStudio::Date
#   end
# end
# threads.each(&:join)


#Parallel.each((1..64), in_processes: 4) do |i|
(1..6000).each do |i|
  #threads << Thread.new do
    # puts Time.new.class
    #puts OpenStudio::DateTime.new.class
    require_relative 'stupid_measure'

    a = StupidMeasure.new
    puts a.call_me_now(i)

    #fail "NOT OPENSTUDIO CLASS" unless period_end_date === OpenStudio::Date
  #end
end

#threads.each(&:join)