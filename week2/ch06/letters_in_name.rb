puts 'Hi, what is your first name?'
firstName = gets.chomp
puts 'What is your middle name?'
middleName = gets.chomp
puts 'What is your last name?'
lastName = gets.chomp

puts "Did you know there are #{firstName.length.to_i +
  middleName.length.to_i + lastName.length.to_i} letters in your name?"
