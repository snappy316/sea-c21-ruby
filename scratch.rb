#!/usr/bin/env ruby
#
# The secret of getting ahead is getting started.
# - Mark Twain

def profile(block_descriiption, &block)
  start_time = Time.new
  block.call
  duration = Time.new - start_time
  puts "#{block_descriiption}: #{duration} seconds"
end

profile('25000 doublings') do
  number = 1

  25000.times do
    number = number + number
  end

  puts "#{number.to_s.length} digits"
end

profile('count to a million') do
  number = 0
  1_000_000.times do
    number = number + 1
  end
end
