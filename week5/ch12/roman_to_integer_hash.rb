def roman_to_integer numeral
  integer = 0
  previous = ''
  roman_numerals = {'M': 1000, 'D': 500, 'C': 100,
                    'L': 50,   'X': 10,  'V': 5,   'I': 1}
  numeral.each_char do |letter|
    puts letter
    integer += roman_numerals[letter]
    previous = letter
  end
  integer
end

puts 'Enter roman numeral'
input = gets.chomp
puts 'Here it is as a numeral'
puts roman_to_integer(input.upcase)
