class BabyDragon
  attr_reader :choice
  attr_accessor :name, :training, :hungry, :sleepy

  def initialize(name)
    @name = name
    @training = 0
    @hungry = 5
    @sleepy = 5
    intro
    method_dispatch
  end

  def feed
    if hungry > 3
      @hungry -= 4
    else
      puts "#{@name} squeaks and shakes their head, turning their mouth away from the food."
    end
  end

  def walk
    @hungry += 1
    @sleepy += 1
    puts "With care and excitement, you take the spirited #{@name} and set out on a thrilling walk"\
          " in our fascinating surroundings."
  end

  def play
    @hungry += 2
    @sleepy += 1
    puts "Engaging in a playful battle of wits, you toss objects towards the lively #{@name}"\
          ", who nimbly retrieves them with enthusiasm."
  end

  def pet
    @sleepy += 1
    puts "As your hands brush their soft scales, #{@name} tilts their head slightly and lets"\
         " out a series of low rumbling and sqweaking noises."
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
    @training += 1
  end

  private

  def intro
    puts 'You found a large egg while walking the other day and you brought it home.'
    puts 'It just hatched and out popped a baby dragon!'
  end

  def method_dispatch
    puts 'MENU'
    @choice = $stdin.gets.chomp.downcase
    case choice
    when 'feed' then feed
    else
    end
  end
end



"DracoFlare flaps their small wings attempting flight causing a comical, deflating 'whoosh' as they zigzag across the room like an overexcited newborn penguin.\n"
"DracoFlare squeaks and releases a scorching puff of fire directed at an unsuspecting houseplant, setting it on fire briefly before you put it out.\n"
