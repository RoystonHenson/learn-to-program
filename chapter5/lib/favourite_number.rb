class FavouriteNumber
  attr_reader :number

  def get_number
    puts 'Hey! What is your favourite number?: '
    @number = $stdin.gets.chomp.to_i
  end

  def better_number
    puts "Hmm...Not bad, but I think #{number + 1} is a bigger, better, favourite number!"
  end
end