  puts 'Welcome to the Centre of Leap Year Information Control'
  puts 'Please enter a start year: '
  start_year = $stdin.gets.chomp
  puts 'Thank you. Please enter an end year: '
  end_year = $stdin.gets.chomp
  puts 'Procesessing request...'
  search = start_year.to_i
  search += 1 until search % 4 == 0
  while search <= end_year.to_i
    if search % 100 == 0
      puts search if search % 400 == 0
      search += 4
    else
      puts search if search % 4 == 0
      search += 4
    end
  end
