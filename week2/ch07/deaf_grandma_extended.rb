puts "AH MIJITO, IS THAT YOU? IT'S GOOD TO SEE YOU."
bye_count = 0
loop do
  answer = gets.chomp
  if answer == answer.upcase
    (answer == 'BYE') ? (bye_count += 1) : (bye_count = 0)
    break if bye_count > 2
    reply = rand(2)
    (reply == 1) ? (puts "NO, NOT SINCE 19#{rand(40..90)}!")
    : (puts "OH YES, I WAS #{rand(5..30)} YEARS OLD THEN")
  else
    puts "HUH?! SPEAK UP, SONNY!"
  end
end
puts "BYE SWEETIE"
