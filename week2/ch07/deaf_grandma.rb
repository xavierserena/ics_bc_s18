puts "AH MIJITO, IS THAT YOU? IT'S GOOD TO SEE YOU."
answer = gets.chomp
while answer != 'BYE'
  if answer == answer.upcase
    puts "OH YES, I WAS #{rand(5..30)} YEARS OLD THEN"
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
  answer = gets.chomp
end
puts "BYE SWEETIE!"
