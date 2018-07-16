#99 bottles of beer on the wall, 99 bottles of beer.
#Take one down and pass it around, 98 bottles of beer on the wall.
bottles_of_beer = 5
qty_and_noun = 'bottles'
while bottles_of_beer > 1
  (bottles_of_beer == 2) : (qty_and_noun = "#{bottles_of_beer}")
  puts "#{bottles_of_beer} bottles of beer on the wall, " +
       "#{bottles_of_beer} bottles of beer"
  bottles_of_beer -= 1
  break if bottles_of_beer == 1
  puts puts "Take one down and pass it around, " +
       "#{bottles_of_beer} bottles of beer on the wall."
end
puts puts "Take one down and pass it around, one bottle of beer on the wall."
puts "One bottle of beer on the wall, one bottle of beer"
puts puts "Take one down and pass it around, no more bottles of beer on the wall."
puts "No more bottles of beer on the wall, no more bottles of beer."
puts "Go to the store and buy some more, 99 bottles of beer on the wall."
