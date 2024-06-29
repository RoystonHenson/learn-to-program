def first_line (bottles)
  puts "#{bottles} bottles of beer on the wall, #{bottles} bottles of beer."
end
 
def second_line(bottles)
  puts "Take one down and pass it around, #{bottles} bottles of beer on the wall."  
end

def alt_line(bottles) 
  puts "Take one down and pass it around, #{bottles} bottle of beer on the wall."  
end

bottles = 99

while bottles > 0
  if bottles > 2
    first_line(bottles)
    bottles -= 1
    second_line(bottles)
  elsif bottles == 2
    first_line(bottles)
    bottles -= 1
    alt_line(bottles)
  elsif bottles == 1
    puts '1 bottle of beer on the wall, 1 bottle of beer.'
    puts 'Take one down and pass it around, no more bottles of beer on the wall.'
    puts 'No more bottles of beer on the wall, no more bottles of beer.'
    puts 'Go to the store and buy some more, 99 bottles of beer on the wall!'
    break
  end
end