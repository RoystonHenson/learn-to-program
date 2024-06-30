class OldRomanNumeral
  attr_reader :number, :rom_number

  def initialize
    @rom_number = ''
  end

  def get_num
    @number = $stdin.gets.chomp
  end

  def num_to_rom(number)
      rom_number << 'M' * (number / 1000)
      number %= 1000
      rom_number << 'D' * (number / 500)
      number %= 500
      rom_number << 'C' * (number / 100)
      number %= 100
      rom_number << 'L' * (number / 50)
      number %= 50
      rom_number << 'X' * (number / 10)
      number %= 10
      rom_number << 'V' * (number / 5)
      number %= 5
    rom_number << 'I' * number
  end

  def print_num_to_rom
    puts rom_number
  end
end