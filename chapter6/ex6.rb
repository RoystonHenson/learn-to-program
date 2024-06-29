# Angry boss
puts 'WHADDAYA WANT?!'
answer = $stdin.gets.chomp
puts "WHADDAYA MEAN '#{answer.upcase}'?!? YOU'RE FIRED!!"

# Table of contents using .center / .ljust / .rjust
line_width = 40
puts 'Table of Contents'.center(line_width)
puts 'Chapter 1: Getting Started'.ljust(line_width) + 'Page 1'.center(line_width / 2)
puts 'Chapter 2: Numbers'.ljust(line_width) + 'Page 9'.center(line_width / 2)
puts 'Chapter 3: Letter'.ljust(line_width) + ' Page 13'.center(line_width / 2)
