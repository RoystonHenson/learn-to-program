require 'greeter'

describe Greeter do
  greeter = Greeter.new

  describe '#get_first_name' do
    it 'asks user for first name' do
      expect(greeter.get_first_name).to eq(greeter.first_name)   
    end

    describe '#get_middle_name' do
      it 'asks user for middle name' do
        expect(greeter.get_middle_name).to eq(greeter.middle_name)
      end
    end

    describe '#get_last_name' do
      it 'asks user for last name' do
        expect(greeter.get_last_name).to eq(greeter.last_name)
      end
    end

    describe '#greet' do
      it 'outputs greeting to user with their full name' do
        expect { greeter.greet }.to output("Excellent! Welcome #{greeter.first_name} #{greeter.middle_name} #{greeter.last_name}!\n").to_stdout
      end
    end
  end
end