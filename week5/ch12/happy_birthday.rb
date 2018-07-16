puts 'Enter your birthyear'
birthyear = gets.chomp.to_i
puts 'Enter the month number in which young were born'
birthmonth = gets.chomp.to_i
puts 'Enter the day of the month in which you were born'
birthday = gets.chomp.to_i

while(Time.local(birthyear + 1, birthmonth, birthday) < Time.new)
  puts 'SPANK!'
  birthyear += 1
end
