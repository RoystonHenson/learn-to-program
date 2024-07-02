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
    if number == 100
      @eng_num = 'one-hundred'
    elsif number / 10 == 9 && number % 10 != 0
      @eng_num = "ninety-#{one_to_nine(number - 90)}"
    elsif number == 90
      @eng_num = 'ninety'
    elsif number / 10 == 8 && number % 10 != 0
      @eng_num = "eighty-#{one_to_nine(number - 80)}"
    elsif number == 80
      @eng_num = 'eighty'
    elsif number / 10 == 7 && number % 10 != 0
      @eng_num = "seventy-#{one_to_nine(number - 70)}"
    elsif number == 70
      @eng_num = 'seventy'
    elsif number / 10 == 6 && number % 10 != 0
      @eng_num = "sixty-#{one_to_nine(number - 60)}"
    elsif number == 60
      @eng_num = 'sixty'
    elsif number / 10 == 5 && number % 10 != 0
      @eng_num = "fifty-#{one_to_nine(number - 50)}"
    elsif number == 50
      @eng_num = 'fifty'
    elsif number / 10 == 4 && number % 10 != 0
      @eng_num = "fourty-#{one_to_nine(number - 40)}"
    elsif number == 40
      @eng_num = 'fourty'
    elsif number / 10 == 3 && number % 10 != 0
      @eng_num = "thirty-#{one_to_nine(number - 30)}"
    elsif number == 30
      @eng_num = 'thirty'
    elsif number / 10 == 2 && number % 10 != 0
      @eng_num = "twenty-#{one_to_nine(number - 20)}"
    elsif number == 20
      @eng_num = 'twenty'
    elsif number == 19   
      @eng_num = 'nineteen'
    elsif number == 18
      @eng_num = 'eighteen'
    elsif number == 17
      @eng_num = 'seventeen'
    elsif number == 16
      @eng_num = 'sixteen'
    elsif number == 15
      @eng_num = 'fifteen'
    elsif number == 14
      @eng_num = 'fourteen'
    elsif number == 13
      @eng_num = 'thirteen'
    elsif number == 12
      @eng_num = 'twelve'
    elsif number == 11
      @eng_num = 'eleven'
    elsif number == 10
      @eng_num = 'ten' 
    end
    one_to_nine(number)  
    @eng_num = 'zero' if number == 0 
    @eng_num
  end

  def one_to_nine(number)
    if number == 9
      @eng_num = 'nine' 
    elsif number == 8
      @eng_num = 'eight'
    elsif number == 7
      @eng_num = 'seven'
    elsif number == 6
      @eng_num = 'six'
    elsif number == 5
      @eng_num = 'five'
    elsif number == 4 
      @eng_num = 'four'
    elsif number == 3
      @eng_num = 'three'
    elsif number == 2
      @eng_num = 'two'
    elsif number == 1
      @eng_num = 'one'
    end
  end

  def print_number
    print "#{number}? I think you mean #{eng_num}!"
  end
  
end