require 'old_roman_numeral'

describe OldRomanNumeral do
  let(:orn) { described_class.new }

  describe '#initialize' do
    it 'initialises with rom_number variable' do
      expect(orn).to respond_to(:rom_number)
    end
  end

  describe '#get_num' do
  let(:number) { StringIO.new('1')}
    it 'sets number provded by user to a variable' do
      $stdin = number
      orn.get_num
      expect(orn.number).to eq('1')
      $stdin = STDIN
    end
  end

  describe '#num_to_rom' do
    it 'converts number 1 to I' do
      num = 1
      expect(orn.num_to_rom(num)).to eq('I')
    end

    it 'converts number 6 to VI' do
      num = 6
      expect(orn.num_to_rom(num)).to eq('VI')
    end

    it 'converts number 17 to XVI' do
      num = 17
      expect(orn.num_to_rom(num)).to eq('XVII')
    end
    
    it 'converts number 58 to LVI' do
      num = 58
      expect(orn.num_to_rom(num)).to eq('LVIII')
    end

    it 'converts number 169 to CLXVIIII' do
      num = 169
      expect(orn.num_to_rom(num)).to eq('CLXVIIII')
    end

    it 'converts number 576 to DLXXVI' do
      num = 576
      expect(orn.num_to_rom(num)).to eq('DLXXVI')
    end

    it 'converts 1687 to MDCLXXXVII' do
      num = 1687
      expect(orn.num_to_rom(num)).to eq('MDCLXXXVII')
    end
  end
  
  describe '#print_num_to_rom' do
    it 'prints roman numeral for user to see' do
      num = 1
      orn.num_to_rom(num)
      expect { orn.print_num_to_rom }.to output("I\n").to_stdout
    end
  end
end