def old_roman_numeral integer
  numeral = ''
  roman_numerals = [['M', 1000], ['D', 500], ['C', 100],
                    ['L', 50], ['X', 10], ['V', 5], ['I', 1]]
  roman_numerals.each do |number_set|
    numeral += number_set[0]*(integer/number_set[1])
    integer -= number_set[1]*(integer/number_set[1])
  end
  return numeral
end
puts "Enter integer"
input = gets.chomp
puts old_roman_numeral input.to_i
