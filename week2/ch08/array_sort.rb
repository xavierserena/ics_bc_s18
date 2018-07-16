word_array = []
loop do
  puts "Type word below"
  input_word = gets.chomp
  break if input_word == ''
  word_array.push input_word
end
puts word_array.sort
