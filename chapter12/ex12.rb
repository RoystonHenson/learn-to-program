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
puts 'And what number month? '
month = $stdin.gets.chomp
puts 'And the number day? '
day = $stdin.gets.chomp
birth_date = Time.new(year, month, day)
age = ((((Time.new - birth_date) / 60) / 60) /24) / 365
puts "Great! Here is your present! One for each year! #{"SPANK!" * age.to_i}"
end

# Birthday Helper
def birthday_helper
  array = File.readlines('birthdays.txt').each_with_index
  array.map { |x| x.gsub!(/\n/, '') }
  array.map { |x| x.gsub!(/\t/, '') }
  hash = {}
  array.each { |x|
                temp = x.split(',')
                hash[temp[0]] = "#{temp[1]} #{temp[2]}"
              }
  puts 'Whose birthday would you like to view?: '
  hash.each_key { |k| puts "  -#{k}"}
  answer = $stdin.gets.chomp
  if hash.has_key?(answer)
    birth_date = hash[answer].split
    birth_time = Time.new(birth_date[2], birth_date[0], birth_date[1])
    birthday_this_year = Time.new(Time.new.year, birth_date[0], birth_date[1])
    if birthday_this_year > Time.now
      puts "Their next birthday will be on #{birthday_this_year.day}/#{birthday_this_year.month}." 
      puts "They will be #{birthday_this_year.year - birth_time.year}!"
    else
      puts "Their next birthday will be next year on #{birthday_this_year.day}/#{birthday_this_year.month}/#{birthday_this_year.year + 1}."
      puts "They will be #{(birthday_this_year.year - birth_time.year) +1}!"
    end
  else
    puts "I'm sorry. That birthday is not in our database."
  end
end
birthday_helper