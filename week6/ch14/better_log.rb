$nesting_depth = 0
$answer_to_the_ultimate_question = 42
def log description, &block
  indent = ' '*$nesting_depth
  puts "#{indent}Beginning #{description}..."
  $nesting_depth += 1
  output = block.call
  $nesting_depth -= 1
  puts "#{indent}...#{description} finished, returning: #{output}"
end

log 'outer block' do
  log 'some little block' do
    log 'teeny-tiny block' do
      'lots of love'
    end
    $answer_to_the_ultimate_question
  end

  log 'yet another block' do
    '!doof naidnI evol I'.reverse
  end

  'Berkeley'[0] == 'Best university'[0]
end
