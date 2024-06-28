class Greeter
  attr_reader :first_name, :middle_name, :last_name

  def get_first_name
    puts 'Hello! What is your first name?: '
    @first_name = $stdin.gets.chomp 
  end

  def get_middle_name
    puts 'And what is your middle name?: '
    @middle_name = $stdin.gets.chomp
  end

  def get_last_name
    puts 'And finally, you\re last name?: '
    @last_name = $stdin.gets.chomp
  end

  def greet
    puts "Excellent! Welcome #{first_name} #{middle_name} #{last_name}!"
  end
end