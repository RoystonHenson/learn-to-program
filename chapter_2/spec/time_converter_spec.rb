require 'time_converter'

describe TimeConverter do
  describe '#hours_in_a_year' do
    it 'prints out the number of hours in a year' do
      time_converter = TimeConverter.new
      expect { time_converter.hours_in_a_year }.to output('8760').to_stdout
    end
  end

  describe '#minutes_in_a_decade' do
    it 'prints out the number of minutes in a decade' do
      time_converter = TimeConverter.new
      expect { time_converter.minutes_in_a_decade }.to output('5256000').to_stdout   
    end
  end

  describe '#age_in_seconds' do
    it 'prints out your age in seconds' do
      time_converter = TimeConverter.new
      age = 20
      expect { time_converter.age_in_seconds(age) }.to output('630720000').to_stdout
    end
  end

  describe '#age_from_seconds_to_years' do
    it 'prints out your age in years' do
      time_converter = TimeConverter.new
      age = 1_160_000_000
      expect { time_converter.age_from_seconds_to_years(age) }.to output('36').to_stdout
    end
  end
end