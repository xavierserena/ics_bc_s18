Dir.chdir 'D:/Media/Testing'
songs = Dir['D:/Music/J. Cole/**/*.m4a']

### Copy in your shuffle method first
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

### Now use it to build your playlist:
playlist = 'coded_playlist.m3u'
File.open playlist, 'w' do |f|
   shuffle(songs).each do |s|
     f.write(s + ', ')
     puts s
   end
end
