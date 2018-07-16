# These are just to make the map easier for me to read.
# "M" is visually more dense than "o".
M = 'land'
o = 'water'
world = [[o,o,o,o,o,o,o,o,o,o,o],
         [o,o,o,o,M,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,M,M,o],
         [o,o,o,M,o,o,o,o,o,M,o],
         [o,o,o,M,o,M,M,o,o,o,o],
         [o,o,o,o,M,M,M,M,o,o,o],
         [o,o,o,M,M,M,M,M,M,M,o],
         [o,o,o,M,M,o,M,M,M,o,o],
         [o,o,o,o,o,o,M,M,o,o,o],
         [o,M,o,o,o,M,o,o,o,o,o],
         [o,o,o,o,o,o,o,o,o,o,o]]

def continent_size world, x, y
  if world[y][x] != 'land'
    # Either it's water or we already counted it,
    # but either way, we don't want to count it now.
    puts 'no land found'
    return 0
  end

  # So first we count this tile...
  puts 'Tile '
  size = 1
  world[y][x] = 'counted land'
  # ...then we count all of the neighboring eight tiles
  # (and, of course, their neighbors by way of the recursion).
  puts 'Scanning 1st tile'
  size = size + continent_size(world, x-1, y-1)
  puts 'Scanning 2nd tile'
  size = size + continent_size(world, x , y-1)
  puts 'Scanning 3rd tile'
  size = size + continent_size(world, x+1, y-1)
  puts 'Scanning 4th tile'
  size = size + continent_size(world, x-1, y )
  puts 'Scanning 5th tile'
  size = size + continent_size(world, x+1, y )
  puts 'Scanning 6th tile'
  size = size + continent_size(world, x-1, y+1)
  puts 'Scanning 7th tile'
  size = size + continent_size(world, x , y+1)
  puts 'Scanning 8th tile'
  size = size + continent_size(world, x+1, y+1)
  size
end
puts continent_size(world, 5, 5)
