def modern_roman_numeral integer
  numeral = ''
  roman_numerals = [['M', 1000], ['D', 500], ['C', 100],
    ['L', 50], ['X', 10], ['V', 5], ['I', 1]]
  roman_numerals.each do |number_set|
    index = roman_numerals.index(number_set)
    integer_length = integer.to_s.length.to_i
    letter_quotient = integer/number_set[1]
    if letter_quotient != 0
      if integer.to_s[0] == '9'
        numeral += roman_numerals[(index + 1)][0] +
          (roman_numerals[(index - 1)][0])
        integer -= 4*(10**(integer_length - 1))
      else
        numeral += number_set[0]*letter_quotient
      end
    end
    integer -= number_set[1]*letter_quotient
  end
  return numeral
end

puts "Enter integer"
input = gets.chomp
if input.to_i < 0
  puts "Romans had no concept of negative numbers, " +
    "please enter an integer between 0 & 4999"
else
  puts modern_roman_numeral input.to_i
end
