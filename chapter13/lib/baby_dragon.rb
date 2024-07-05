class BabyDragon
  attr_reader :choice
  attr_accessor :name, :training, :hungry, :sleepy

  def initialize(name)
    @name = name
    @training = 0
    @hungry = 5
    @sleepy = 5
    intro
  end

  def feed
    if hungry > 3
      @hungry -= 4
      puts "You give #{@name} some snacks and they chomp them down in no time!"
    else
      puts "#{@name} squeaks and shakes their head, turning their mouth away from the food."
    end
    method_dispatch
  end

  def walk
    @hungry += 1
    @sleepy += 1
    puts "With care and excitement, you take the spirited #{@name} and set out on a thrilling walk"\
         " in our fascinating surroundings."
    method_dispatch
  end

  def play
    @hungry += 2
    @sleepy += 1
    puts "Engaging in a playful battle of wits, you toss objects towards the lively #{@name}"\
          ", who nimbly retrieves them with enthusiasm."
    method_dispatch
  end

  def pet
    @sleepy += 1
    puts "As your hands brush their soft scales, #{@name} tilts their head slightly and lets"\
         " out a series of low rumbling and sqweaking noises."
    method_dispatch
  end

  def train
    if @training == 0
      puts "#{@name} let's out a soft, high-pitched squeak before staring back at you with googly eyes."\
           " This might take a while..."
    elsif @training == 1
      puts "#{@name} scrunches up their face and lets out a curious and comical puff of smoke."
    elsif @training == 2
      puts "#{@name} flaps their small wings attempting flight causing a comical, deflating 'whoosh'"\
            " as they zigzag across the room like an overexcited newborn penguin."
    elsif @training == 3
      puts "#{@name} squeaks and releases a scorching puff of fire directed at an unsuspecting"\
            " houseplant, setting it on fire briefly before you put it out."
    else
      puts "#{@name} flaps their wings frantically before managing to hover briefly, a dazed"\
            " expression adorning their scaly face as they wonder how on earth they managed to"\
            " accomplish such a feat."
    end
    @hungry += 3
    @sleepy += 1
    @training += 1
    method_dispatch
  end

  private

  def intro
    puts 'You found a large egg while walking the other day and you brought it home.'
    puts 'It just hatched and out popped a baby dragon!'
  end

  def method_dispatch
    puts "\n--MENU--".center(60)
    puts "\n\tFeed:\tFeed your baby dragon!\n\tWalk:\tTake your baby dragon for a walk!"
    puts "\tPlay:\tHave some fun with your baby dragon!\n\tPet:\tShow your baby dragon"\
         " some affection!\n\tTrain:\tTeach your baby dragon some new tricks!"
    puts "\tExit:\t Exit the game. :("
    @choice = $stdin.gets.chomp.downcase
    case choice
    when 'feed' then feed
    when 'walk' then walk
    when 'play' then play
    when 'pet' then pet
    when 'train' then train
    when 'exit' then exit(0)
    else
      puts 'Please select one of the options: '
      method_dispatch
    end
  end
end


