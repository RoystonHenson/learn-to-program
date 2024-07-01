def num_to_rom(number)
  @rom_number = ''
  number = convert_num_to_rom('M', 1000, number)
  
  if (number - 900) < 100 && (number - 900) >= 0
    @rom_number << 'CM'
    number -= 900
  else
    number = convert_num_to_rom('D', 500, number)
  end

  if (number - 400) < 100 && (number - 400) >= 0
    @rom_number << 'CD'
    number -= 400
  else
    number = convert_num_to_rom('C', 100, number)
  end

  if (number - 90) < 10 && (number - 90) >= 0
    @rom_number << 'XC'
    number -= 90
  else
    number = convert_num_to_rom('L', 50, number)
  end

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

def test(num)
  puts num_to_rom(num)
end

test(899)
test(900)
test(901)
test(912)
test(923)
test(934)
test(945)
test(956)
test(967)
test(978)
test(988)
test(999)
test(1000)
test(1001)