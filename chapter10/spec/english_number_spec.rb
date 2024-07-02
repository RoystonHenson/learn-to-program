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
      expect(en.number).to eq('1')
      $stdin = STDIN
    end

    describe '#num_to_eng' do
      it "converts user's number to english" do
        number = en.save_number('1')
        expect(en.num_to_eng(number)).to eq('One')
      end
    end
  end
end