require 'yaml'
filename = 'ShakespeareQuote.txt'
test_string = 'To be or not to be, that\'s the question'
File.write filename, test_string
read_string = File.read filename
puts test_string == read_string
