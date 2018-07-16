puts 'Type innital year'
initial_year = gets.chomp
puts "Type final year"
final_year = gets.chomp
puts "Leap years:"
while(initial_year.to_i < final_year.to_i)
  initial_year = initial_year.to_i
  if (initial_year%4 == 0) || (initial_year%100 == 0 && initial_year%400 == 0)
    puts initial_year
  end
  initial_year += 1
end
