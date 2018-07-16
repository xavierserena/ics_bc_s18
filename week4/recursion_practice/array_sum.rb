def array_sum(array)
  if array.length == 1
    array[0]
  else
    array.pop.to_i + array_sum(array)
  end
end

puts array_sum [1, 2, 3, 4, 5]
