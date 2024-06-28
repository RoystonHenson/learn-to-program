require 'favourite_number'

describe FavouriteNumber do
  favourite_number = FavouriteNumber.new

  describe '#get_number' do
    it 'asks user for favourite number' do
      expect(favourite_number.get_number).to eq(favourite_number.number)
    end
  end

  describe '#better_number' do
    it '.class responds to #better_number' do
      expect(favourite_number).to respond_to(:better_number)
    end

    it "outputs user's number plus one" do
      favourite_number.get_number
      expect { favourite_number.better_number }.to output("Hmm...Not bad, but I think #{favourite_number.number + 1} is a bigger, better, favourite number!\n").to_stdout
    end
  end
end
