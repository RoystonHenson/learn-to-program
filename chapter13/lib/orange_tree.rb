class OrangeTree
  attr_accessor :height, :age, :oranges, :alive

  def initialize
    @height = 3
    @age = 0
    @oranges = 0
  end

  def passage_of_time
    end_of_life?
    @height += 3
    @age += 1
    @oranges = rand(200..250)
  end

  def inspect_tree
    end_of_life?
    print 'As you take a closer look at the tree you can see that it '
    print "is #{@height} feet tall, #{@age} years old and has #{@oranges} oranges."
  end

  def pick_oranges(amount)
    end_of_life?
    if @oranges - amount >= 0
      @oranges -= amount
    else
      puts "There aren't enough oranges for that."
    end
  end

  def harvest_oranges
    end_of_life?
    puts "Your harvest has yielded #{@oranges} oranges!"
    @oranges = 0
  end

  private

  def end_of_life?
    if @age > 9
      raise 'The tree has died and you are unable to interact with it. You will need to plant another tree.' 
    end
  end
end