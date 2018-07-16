puts "Hey, come in. And, don't forget to close the door. " +
  "What is your name again?"
name = gets.chomp
puts "#{name.split.first}, so what brings you in today?"
gets.chomp
puts "Hahahaha oh you're funny, I see why you were hired. " +
  "But really, what do you want?"
request = gets.chomp
puts "WHAT DO YOU MEAN \"#{request.upcase}\"?! " +
  "ARE OUT OF YOUR MIND? YOU'RE FIRED!"
