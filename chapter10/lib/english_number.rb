class EnglishNumber
    attr_reader :number, :eng_num
  
  def prompt_user
    print 'Hello! Please enter a number: '
    save_number($stdin.gets.chomp)
  end

  def save_number(number)
    @number = number.to_i
  end

  def num_to_eng(number)
    case number
      when 0 then @eng_num = 'zero'
      when 1 then @eng_num = 'one' 
      when 2 then @eng_num = 'two'
      when 3 then @eng_num = 'three'
      when 4 then @eng_num = 'four'
      when 5 then @eng_num = 'five'
      when 6 then @eng_num = 'six'
      when 7 then @eng_num = 'seven'
      when 8 then @eng_num = 'eight'
      when 9 then @eng_num = 'nine'
      when 10 then @eng_num = 'ten' 
    end
    @eng_num.capitalize!
  end

  def print_number
    print "#{number}? I think you mean #{eng_num}!"
  end
  
end