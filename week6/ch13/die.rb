class Die
  def initialize
    roll
  end

  def roll
    @number_showing = rand(1..6)
  end

  def showing
    @number_showing
  end

  def cheat
    puts 'What number do you want? (1-6)'
    @number_showing = gets.chomp.to_i
    if @number_showing > 0 && @number_showing < 7
      showing
    else
      'Obviously it has to be between 1 and 6!'
    end
  end
end
puts Die.new.cheat
