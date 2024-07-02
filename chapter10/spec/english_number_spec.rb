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
      it "Converts '11' to 'eleven'" do
        number = en.save_number('11')
        expect(en.num_to_eng(number)).to eq('eleven')
      end

      it "converts '19' to 'nineteen" do
        number = en.save_number('19')
        expect(en.num_to_eng(number)).to eq('nineteen')
      end

      it "converts '22' to 'twenty-two" do
        number = en.save_number('22')
        expect(en.num_to_eng(number)).to eq('twenty-two')
      end

      it "converts '33' to 'thirty-three" do
        number = en.save_number('33')
        expect(en.num_to_eng(number)).to eq('thirty-three')
      end

      it "converts '44' to 'fourty-four" do
        number = en.save_number('44')
        expect(en.num_to_eng(number)).to eq('fourty-four')
      end

      it "converts '55' to 'fifty-five" do
        number = en.save_number('55')
        expect(en.num_to_eng(number)).to eq('fifty-five')
      end

      it "converts '66' to 'sixty-six" do
        number = en.save_number('66')
        expect(en.num_to_eng(number)).to eq('sixty-six')
      end

      it "converts '77' to 'seventy-seven" do
        number = en.save_number('77')
        expect(en.num_to_eng(number)).to eq('seventy-seven')
      end

      it "converts '88' to 'eighty-eight" do
        number = en.save_number('88')
        expect(en.num_to_eng(number)).to eq('eighty-eight')
      end
      
      it "converts '99' to 'ninety-nine" do
        number = en.save_number('99')
        expect(en.num_to_eng(number)).to eq('ninety-nine')
      end

      it "converts '100' to 'one-hundred" do
        number = en.save_number('100')
        expect(en.num_to_eng(number)).to eq('one-hundred')
      end
    end

    describe '#print_number' do
      it 'prints converted number for user' do
        en.save_number('1')
        en.num_to_eng(en.number)
        expect { en.print_number }.to output("#{en.number}? I think you mean #{en.eng_num}!").to_stdout 
      end
    end
  end
end