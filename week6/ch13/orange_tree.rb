class OrangeTree
  def initialize
    puts 'You have planted orange seeds in rich oil.'
    puts 'It will take 5 years until it starts giving off oranges' +
         'and 10 years to reach full maturity.'
    puts
    @tree_age = 0
    @tree_height = 0
    @orange_count = 0
  end

  def one_year_passes
    puts 'One year later...'
    @tree_age += 1
    if @tree_age < 5
      @tree_height += 1.2*@tree_age
    elsif @tree_age < 11
      @orange_count = 50*@tree_age - rand(200..225)
    elsif @tree_age < 30
      @orange_count = rand(300..350)
    else
      puts 'The tree is now in tree heaven. It has served a fruitful life.'
      exit
    end
  end

  def height
    puts "The orange tree is #{@tree_height.round(1)} ft tall!"
  end

  def age
    puts "The orange tree is #{@tree_age} years old."
  end

  def count_oranges
    if @orange_count == 1
      puts "There is one orange on the tree."
    else
      puts "There are #{@orange_count} oranges on the tree."
    end
  end

  def pick_orange
    if @orange_count > 0
      @orange_count -= 1
      puts 'The freshest in the west. Go ahead, peel it. Mhmm delicious!'
    else
      puts "There are no oranges to pick."
      if @tree_age < 5
        puts 'The tree is stil too young to give off fruits.'
      end
    end
  end
end

help = ['You can interact with your tree by typing any of the following:',
        'fast-forward, height, age, count oranges, or pick orange',
        'Type exit to exit the program.']

tree = OrangeTree.new
puts help
while true
  input = gets.chomp.downcase
  if input == 'fast-forward'
    tree.one_year_passes
  elsif input == 'height'
    tree.height
  elsif input == 'age'
    tree.age
  elsif input == 'count oranges'
    tree.count_oranges
  elsif input == 'pick orange'
      tree.pick_orange
  elsif input == 'exit'
    exit
  else
    puts 'Invalid command'
    puts help
  end
  puts
end
