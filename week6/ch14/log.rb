def log description, &block
  puts "Beginning #{description}..."
  output = block.call
  puts "...#{description} finished, returning: #{output}"
end

log 'outer block' do
  log 'some little block' do
    'apple'.length
  end

  log 'yet another block' do
    '!doof iahT ekil I'.reverse
  end

  'Stanford' == 'Best university'
end
