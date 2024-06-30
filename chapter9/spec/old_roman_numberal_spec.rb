require 'old_roman_numeral'

describe OldRomanNumeral do
  let(:orn) { described_class.new }

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
    it 'converts number 1 to old roman equivalent for 1' do
      
      num = 1
      expect(orn.num_to_rom(num)).to eq('I')
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