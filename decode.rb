require 'fit'
require 'pp'

fit_file = Fit.load_file(ARGV[0])

records = fit_file
  .records
  .select{ |r| r.content.record_type == :record && r.content[:raw_distance] != 0}
  .map{ |r| r.content[:raw_speed] }

puts "There are #{records.size} records"
puts "Printing the first speed records 100:\n #{records[0..99]}"
