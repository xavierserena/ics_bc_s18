def array_min(array, len)
  if len == 1
    array[0]
  else
    last, s_to_last = array.pop, array[len - 2]
    if last < s_to_last
      array[len - 2] = last
    end
    array_min(array, len - 1)
  end
end

puts array_min [1, 2, 3, 4], 4
