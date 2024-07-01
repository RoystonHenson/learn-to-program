def num_to_rom(number)
  @rom_number = ''
  number = convert_num_to_rom('M', 1000, number)
  number = convert_num_to_rom('D', 500, number)
  number = convert_num_to_rom('C', 100, number)
  number = convert_num_to_rom('L', 50, number)
  if (number - 40) < 10 && (number - 40) >= 0
    @rom_number << 'XL'
    number -= 40
  else
    number = convert_num_to_rom('X', 10, number)
  end
  if number == 9
    @rom_number << 'IX'
  else
    number = convert_num_to_rom('V', 5, number)
    (number + 1) % 5 == 0 ? @rom_number << 'IV' : @rom_number << 'I' * number
  end
end

def convert_num_to_rom(character, divisor, number)
  @rom_number << character * (number / divisor)
  number %= divisor
end

num_to_rom(39)
puts @rom_number
num_to_rom(40)
puts @rom_number
num_to_rom(41)
puts @rom_number
num_to_rom(42)
puts @rom_number
num_to_rom(43)
puts @rom_number
num_to_rom(44)
puts @rom_number
num_to_rom(45)
puts @rom_number
num_to_rom(46)
puts @rom_number
num_to_rom(47)
puts @rom_number
num_to_rom(48)
puts @rom_number
num_to_rom(49)
puts @rom_number
num_to_rom(50)
puts @rom_number