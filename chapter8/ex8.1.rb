# Collect words and alphabetise

words = []
puts 'Welcome to the word organiser!'
puts "Enter one word at a time and press 'enter'."
puts 'When you are finished hit enter again.'
input = nil
while input != ''
  puts 'Enter word: '
  input = $stdin.gets.chomp
  words << input
end

words.pop
words.sort!
words.each { |x| puts x }