class OldRomanNumeral
  attr_reader :number, :rom_number

  def get_num
    @number = $stdin.gets.chomp
  end

  def num_to_rom(number)
    @rom_number = ''
    number = convert_num_to_rom('M', 1000, number)
    number = convert_num_to_rom('D', 500, number)
    number = convert_num_to_rom('C', 100, number)
    number = convert_num_to_rom('L', 50, number)
    number = convert_num_to_rom('X', 10, number)
    number = convert_num_to_rom('V', 5, number)
    rom_number << 'I' * number
  end
  
  def print_num_to_rom
    puts rom_number
  end

  private

  def convert_num_to_rom(character, divisor, number)
    @rom_number << character * (number / divisor)
    number %= divisor
  end
end