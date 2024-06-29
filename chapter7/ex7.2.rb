# Deaf Grandma

while true
  input = $stdin.gets.chomp
  break if input == 'BYEBYEBYE'
    if input == input.upcase
      puts "NO, NOT SINCE #{rand(1930..1950)}!"
    else
      puts 'HUH?! SPEAK UP, SONNY!'
    end
end