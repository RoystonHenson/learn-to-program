# One Billion Seconds
def one_billion_seconds
  puts 'Welcome to the Billion Seconds calculator!'
  puts 'Please enter your date of birth in the following format(yyyy/mm/dd): '
  birth_date = $stdin.gets.chomp
  birth_date = birth_date.split('/').join(',')
  billion = Time.new((birth_date)) + 1_000_000_000
  time = Time.new
  if billion < time
    puts "Oh, it seems you were already a billion seconds old on #{billion.year}/#{billion.month}/#{billion.day}."
  else
  puts "Congratulations! You will celebrate your billion seconds alive on #{billion.year}/#{billion.month}/#{billion.day}."
  end
end

# Happy Birthday
def happy_birthday
puts 'What year were you born in? ' 
year = $stdin.gets.chomp
puts 'And what number month?'
month = $stdin.gets.chomp
puts 'And the number day?'
day = $stdin.gets.chomp
birth_date = Time.new(year, month, day)
age = ((((Time.new - birth_date) / 60) / 60) /24) / 365
puts "Great! Here is your present! One for each year! #{"SPANK!" * age.to_i}"
end