### In this next line you want to give it the file path of where you want the
###  pictures moved. I recommend using an absolute filepath.
###
### An example for mac could be '/Users/username/Desktop/pic_dst'
### An example for PC could be 'C:/Users/username/Desktop/pic_dst'
Dir.chdir 'D:/Media/Testing'

# First we find all of the pictures to be moved.
### In the next line you want the source
### Note the '/*.jpg' at the end, this is going to grab anything in the
###  final folder that ends in '.jpg' and stash it in an array.
###
### An example for mac could be '/Users/username/Desktop/pic_src/**/*.{JPG,jpg}'
### An example for PC could be 'C:/Users/username/Desktop/pic_src/**/*.{JPG,jpg}'
pic_names = Dir['C:/Users/Xavier Aisek/Pictures/Testing/**/*.jpg']

puts 'What would you like to call this batch?'
batch_name = gets.chomp
puts
print "Downloading #{pic_names.length} files: "
# This will be our counter. We'll start at 1 today,
#  though normally I like to count from 0.
pic_number = 1
pic_names.each do |name|
  print '.' # This is our "progress bar".
  new_name = if pic_number < 10
    "#{batch_name}0#{pic_number}"
  else
    "#{batch_name}#{pic_number}"
  end

  if File.exists?(new_name+'.jpg')
    puts ''
    puts 'Error: File name already exists'
    puts "Please type an option: 'Skip', 'Replace', or 'Keep Both'"
    option = gets.chomp
    if option.downcase == 'skip'
      next
    elsif option.downcase == 'replace'
      File.delete(new_name)
    elsif option.downcase == 'keep both'
      File.rename(name, (new_name+'-Copy.jpg'))
      pic_number += 1
      next
    end
  end
  #Add file extension
  new_name += '.jpg'
  # Now where were we? Oh, yeah...
  File.rename(name, new_name)
  # Finally, we increment the counter.
  pic_number += 1
end
puts # This is so we aren't on progress bar line.
puts 'Done, cutie!'
