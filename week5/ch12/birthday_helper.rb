birthdates = {}
File.read('birthday_helper_input.txt').each_line do |line|
   comma_index = line.index ','
   name = line[0..comma_index - 1]
   birthdates[name] = line[comma_index + 2..line.length - 1]
end

puts 'Who\'s birthdate would you like to know?'
input_name = gets.chomp
if birthdates[input_name] == nil
  puts 'Ah, I don\'t know that one.'
else
  puts birthdates[input_name]
end
