class OldRomanNumeral
  attr_reader :number, :rom_number

  def get_num
    @number = $stdin.gets.chomp
  end

  def num_to_rom(number)
     @rom_number = 'I' * number
  end

  def print_num_to_rom
    puts rom_number
  end
end