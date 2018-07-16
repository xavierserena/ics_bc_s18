def english_number(number)
  return 'Please enter a number that isn\'t negative.' if number < 0 # No negative numbers.
  return 'zero' if number == 0
  # No more special cases! No more returns!
  num_string = '' # This is the string we will return.
  ones_place = %w[one two three four five six
                  seven eight nine]
  tens_place = %w[ten twenty thirty forty fifty
                  sixty seventy eighty ninety]
  teenagers = %w[eleven twelve thirteen
                 fourteen fifteen sixteen seventeen eighteen nineteen]
  # "left" is how much of the number
  # we still have left to write out.
  # "write" is the part we are
  # writing out right now.
  # write and left...get it? :)
  left = number
  write = left/1_000_000_000_000
  left -= write * 1_000_000_000_000
  if write > 0
    trillion = english_number write
    num_string = num_string + trillion + ' trillion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1_000_000_000
  left -= write * 1_000_000_000
  if write > 0
    billions = english_number write
    num_string = num_string + billions + ' billion'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1_000_000
  left -= write * 1_000_000
  if write > 0
    millions = english_number write
    num_string = num_string + millions + ' million'
    if left > 0
      num_string += ' '
    end
  end

  write = left/1000
  left -= write * 1000
  if write > 0
    thousands = english_number write
    num_string = num_string + thousands + ' thousand'
    if left > 0
      num_string += ' '
    end
  end

  write = left / 100 # How many hundreds left?
  left -= write * 100 # Subtract off those hundreds.
  if write > 0
    # Now here's the recursion:
    hundreds = english_number write
    num_string = num_string + hundreds + ' hundred'
    if left > 0
      # So we don't write 'two hundredfifty-one'...
      num_string += ' '
    end
  end

  write = left / 10 # How many tens left?
  left -= write * 10 # Subtract off those tens.
  if write > 0
    if (write == 1) && (left > 0)
      # Since we can't write "tenty-two" instead of
      # "twelve", we have to make a special exception
      # for these.
      num_string += teenagers[left - 1]
      # The "-1" is because teenagers[3] is
      # 'fourteen', not 'thirteen'.
      # Since we took care of the digit in the
      # ones place already, we have nothing left to write.
      left = 0
    else
      num_string += tens_place[write - 1]
      # The "-1" is because tens_place[3] is
      # 'forty', not 'thirty'.
    end
    if left > 0
      # So we don't write 'sixtyfour'...
      num_string += '-'
    end
  end

  write = left # How many ones left to write out?
  left = 0 # Subtract off those ones.
  if write > 0
    num_string += ones_place[write - 1]
    # The "-1" is because ones_place[3] is
    # 'four', not 'three'.
  end
  # Now we just return "num_string"...
  num_string
end

bottles_of_beer = 99
initial_bob = bottles_of_beer
while bottles_of_beer > 1
  bottles_of_beer_s = english_number(bottles_of_beer)
  puts "#{bottles_of_beer_s.capitalize} bottles of beer on the wall, " +
       "#{bottles_of_beer_s} bottles of beer"
  bottles_of_beer -= 1
  bottles_of_beer_s = english_number(bottles_of_beer)
  break if bottles_of_beer == 1
  puts puts "Take one down and pass it around, " +
       "#{bottles_of_beer_s} bottles of beer on the wall."
end
puts puts "Take one down and pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer"
puts puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, " +
     "#{english_number(initial_bob)} bottles of beer on the wall."
