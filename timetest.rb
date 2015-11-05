require 'time'
require 'openstudio'

OpenStudio::Logger::instance().standardOutLogger().enable()

(1..6000).each do |i|
  require_relative 'stupid_measure'

  a = StupidMeasure.new
  puts a.call_me_now(i)
  GC.start
end
