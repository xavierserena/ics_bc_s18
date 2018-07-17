class Array
  def shuffle
    recursive_shuffle(self, [])
  end

  def recursive_shuffle(unshuffled_array, shuffled_array)
    return shuffled_array if unshuffled_array.length == 0
    rand_element = unshuffled_array[rand(unshuffled_array.length)]
    shuffled_array.push(rand_element)
    unshuffled_array.delete(rand_element)
    recursive_shuffle(unshuffled_array, shuffled_array)
  end
end

class Integer
  def to_roman
    integer = self
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
                     roman_numerals[(index - 1)][0]
          integer -= 4*(10**(integer_length - 1))
        else
          numeral += number_set[0]*letter_quotient
        end
      end
      integer -= number_set[1]*letter_quotient
    end
    return numeral
  end

  def factorial
    factorial_computation self
  end

  def factorial_computation number
    return 1 if number == 0
    number*factorial_computation(number - 1)
  end
end

 array = [0,1,2,3,4,5]
 print array.shuffle
 puts
 puts 123.to_roman
 puts 4.factorial
