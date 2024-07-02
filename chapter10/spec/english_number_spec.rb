require 'english_number'

describe EnglishNumber do
  let(:en) { described_class.new }

  describe '#prompt_user' do
    it 'asks user to input number' do
      expect { en.prompt_user }.to output('Hello! Please enter a number: ').to_stdout
    end
  end

  describe '#save_number' do
    let(:io) { StringIO.new ('1')}
    it 'saves users number' do
      $stdin = io.gets
      en.save_number($stdin)
      expect(en.number).to eq(1)
      $stdin = STDIN
    end

    describe '#num_to_eng' do
      it "Converts '0' to 'Zero'" do
        number = en.save_number('0')
        expect(en.num_to_eng(number)).to eq('Zero')
      end

      it "converts '9' to 'Nine" do
        number = en.save_number('9')
        expect(en.num_to_eng(number)).to eq('Nine')
      end

      it "converts '10' to 'Ten" do
        number = en.save_number('10')
        expect(en.num_to_eng(number)).to eq('Ten')
      end
    end

    describe '#print_number' do
      it 'prints converted number for user' do
        en.save_number('1')
        p en.number
        en.num_to_eng(en.number)
        p en.eng_num
        expect { en.print_number }.to output("#{en.number}? I think you mean #{en.eng_num}!").to_stdout 
      end
    end
  end
end