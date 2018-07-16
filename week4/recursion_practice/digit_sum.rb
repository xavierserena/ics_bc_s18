def digit_sum(num, digit_place)
  if digit_place == 0
    num.digits[digit_place].to_i
  else
    num.digits[digit_place].to_i + digit_sum(num, digit_place - 1)
  end
end

puts digit_sum(99, 2)
