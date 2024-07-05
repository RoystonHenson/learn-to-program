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
      #exit(0)
    end
  end
end



"As your hands gracefully brush his soft scales, DracoFlare tilts his head in serene contentment, absorbing the delicate, nurturing touch, visibly savoring the moments of bonding.\n"
"As your hands brush their soft scales, DracoFlare tilts their head slightly and lets out a series of low rumbling and sqweaking noises.\n"