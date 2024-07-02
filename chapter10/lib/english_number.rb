class EnglishNumber
    attr_reader :number

  def prompt_user
    print 'Hello! Please enter a number: '
    save_number($stdin.gets.chomp)
  end

  def save_number(number)
    @number = number
  end

  def num_to_eng(number)
    if number == '1'
      @neg_num = 'One'
    else
      puts 'something went wrong'
    end
  end

  def print_number
    print @number
  end
  
end