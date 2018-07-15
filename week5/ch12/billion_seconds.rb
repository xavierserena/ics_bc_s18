phrase = 0
input = '.'
birthday = []
question_fragments = ['year', 'month number', 'day of the month', 'hour',
                      'minute', 'second']
puts 'Do you know when you\'re turning 1 billion seconds old? Let me help!'
while input != '' && phrase < 6
  puts "Please enter the #{question_fragments[phrase]} in which you were born."
  if phrase > 2
    puts 'Press enter if you don\'t know.'
  end
  input = gets.chomp
  if input == ''
    birthday += [0]*(5 - phrase)
  else
    birthday.push(input)
  end
  phrase += 1
end
birthday = Time.local(birthday[0], birthday[1], birthday[2], birthday[3],
                    birthday[4], birthday[5])
puts 'You turned or will be one billion seconds old on:'
puts birthday + 10**9
