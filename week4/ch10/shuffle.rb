def shuffle(array)
  recursive_shuffle array, []
end

def recursive_shuffle(unshuffled_array, shuffled_array)
  return shuffled_array if unshuffled_array.length == 0
  rand_element = unshuffled_array[rand(unshuffled_array.length)]
  shuffled_array.push(rand_element)
  unshuffled_array.delete(rand_element)
  recursive_shuffle(unshuffled_array, shuffled_array)
end

print shuffle ['a', 'b', 'c', 'd', 'e', 'f']
