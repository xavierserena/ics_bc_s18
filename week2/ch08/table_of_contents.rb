line_width = 30
chapters = [['Getting Started', ' 1'], ['Numbers', ' 9'], ['Letters', '13']]
puts('Table of Contents'.center(line_width*2))
chapters.each_index do |chapter_array|
  puts("Chapter #{chapter_array + 1}: " +
    "#{chapters[chapter_array][0]}".ljust(line_width) +
    "page #{chapters[chapter_array][1]}".rjust(line_width))
end
