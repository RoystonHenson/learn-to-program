# Grandfather Clock
def for_each_hour(&block)
  t = Time.new
  hours = t.hour
  hours -= 12 if hours > 12
  hours.times do 
    block.call
  end
end

for_each_hour do
  puts 'DONG!'
end

# Program Logger
$indent = -2
def log(description, &block)
  $indent += 2
  intro = 'The block has started!'
  puts intro.rjust(intro.length + $indent + 2) 
  middle = "Running '#{description}'... Returned: #{block.call}"
  puts middle.rjust(middle.length + $indent + 4)
  outro = 'The block has finished!'
  puts outro.rjust(outro.length + $indent + 6)
end

log 'Greeting' do
  log 'Hungry' do
    log 'Yummy' do
      'Damn this kebab is good.'
    end
    'I wish I had a kebab right now.'
  end
  'Hi'
end