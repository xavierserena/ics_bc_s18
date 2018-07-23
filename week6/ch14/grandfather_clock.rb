def grandfather_clock &block
  Time.new.hour > 12 ? hour = Time.new.hour - 12 : hour = Time.new.hour
  hour.times do
    block.call
end

grandfather_clock do
  puts "DONG!"
end
