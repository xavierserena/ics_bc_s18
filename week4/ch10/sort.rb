def sort(some_array) # This "wraps" recursive_sort.
  recursive_sort some_array, []
end

def recursive_sort(unsorted_array, sorted_array)
  return sorted_array if unsorted_array.length == 0
  firstWord = unsorted_array[0]
  unsorted_array.each do |word|
    if word < firstWord
      firstWord = word
    end
  end
  sorted_array.push(firstWord)
  unsorted_array.delete(firstWord)
  recursive_sort unsorted_array, sorted_array
end

word_array = []
loop do
  puts "Type word below"
  input_word = gets.chomp
  break if input_word == ''
  word_array.push input_word
end

print sort word_array
