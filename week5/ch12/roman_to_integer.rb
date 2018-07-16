def roman_to_integer numeral
  i = 0
  integer = 0
  roman_numerals = ['M', 1000, 'D', 500, 'C', 100,
                    'L', 50,   'X', 10,  'V', 5,   'I', 1]
  while i < numeral.length
    index = roman_numerals.index(numeral[i])
    if index > 3
      if numeral[i + 1] == roman_numerals[index - 4]
        integer += (roman_numerals[index - 3] - roman_numerals[index + 1])
        i += 2
        next
      end
    else
      integer += roman_numerals[index + 1]
      i += 1
    end
  end
  return integer
end
puts 'Enter roman numeral'
input = gets.chomp
puts 'Here it is as a numeral'
puts roman_to_integer(input.upcase)
