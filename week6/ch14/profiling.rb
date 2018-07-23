def profile block_description, &block
  profiling = true
  if profiling
    start_time = Time.new
  end
  block.call
  if profiling
    duration = Time.new - start_time
    puts "#{block_description}: #{duration} seconds"
  end
end
