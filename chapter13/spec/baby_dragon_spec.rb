require 'baby_dragon'

RSpec.configure do |c|
  c.before { allow($stdout).to receive(:write) 
}
end

describe BabyDragon do
  let(:bd) { BabyDragon.new('DracoFlare') }
  before(:each) do
    allow($stdin).to receive(:gets).and_return('no_gets') 
    bd.send(:intro)
    allow(bd).to receive(:method_dispatch).and_return(false)
  end

  describe '#initilize' do
    it 'has a name, no training, average hunger and sleepiness' do
      expect(bd.name).to eq('DracoFlare') 
      expect(bd.training).to eq(0)
      expect(bd.hungry).to eq(5)
      expect(bd.sleepy).to eq(5)
    end
  end

  describe '#feed' do
    context 'when dragon is hungry' do
      it 'reduces hunger' do
        bd.hungry = 6
        bd.feed
        expect(bd.hungry).to eq(2)
      end
    end

    context 'when dragon is not hungry' do
      it 'refuses to eat' do  
        bd.hungry = 3
        expect {
           bd.feed }.to output(
            "#{bd.name} squeaks and shakes their head, turning their mouth away from the food.\n").to_stdout
      end
    end
  end

  describe '#walk' do

    it 'outputs walk description to user' do
      bd.hungry = 8
      expect {
        bd.walk }.to output(
          "With care and excitement, you take the spirited #{bd.name} and set out on a thrilling walk"\
          " in our fascinating surroundings.\n").to_stdout
    end

    it 'increases hunger and sleepiness' do
      bd.hungry = 5
      bd.sleepy = 5
      bd.walk
      expect(bd.hungry).to eq(6)
      expect(bd.sleepy).to eq(6)
    end
  end

  describe '#play' do
    it 'outputs play description to user' do
      expect {
        bd.play }.to output(
          "Engaging in a playful battle of wits, you toss objects towards the lively #{bd.name}"\
          ", who nimbly retrieves them with enthusiasm.\n").to_stdout
    end

    it 'increases hunger and sleepiness' do
      bd.hungry = 5
      bd.sleepy = 5
      bd.play
      expect(bd.hungry).to eq(7)
      expect(bd.sleepy).to eq(6)
    end
  end

  describe '#pet' do
    it 'outputs petting description to user' do
      expect { 
        bd.pet }.to output(
          "As your hands brush their soft scales, #{bd.name} tilts their head slightly and lets"\
          " out a series of low rumbling and sqweaking noises.\n").to_stdout
    end

    it 'increases sleepiness' do
      bd.sleepy = 5
      bd.pet
      expect(bd.sleepy).to eq(6)
    end
  end

  describe '#train' do
    context 'at all training levels' do
      it 'increases training level' do
        bd.train
        expect(bd.training).to eq(1)
      end

      it 'increases hunger and sleepiness' do
        bd.hungry = 5
        bd.sleepy = 5
        bd.train
        expect(bd.hungry).to eq(8)
        expect(bd.sleepy).to eq(6)
      end
    end

    context 'when training level is 0' do  
      it 'outputs squeak description' do
        expect { 
          bd.train }.to output(
            "#{bd.name} let's out a soft, high-pitched squeak before staring back at you with googly eyes."\
            " This might take a while...\n").to_stdout
      end
    end
    
    context 'when training level is 1' do
      it 'outputs blow smoke description' do
        bd.training = 1
        expect { 
          bd.train }.to output(
            "#{bd.name} scrunches up their face and lets out a curious and comical puff of smoke.\n").to_stdout
      end
    end

    context 'when training level is 2' do
      it 'outputs flap wings description' do
        bd.training = 2
        expect { 
          bd.train }.to output(
            "#{bd.name} flaps their small wings attempting flight causing a comical, deflating 'whoosh'"\
            " as they zigzag across the room like an overexcited newborn penguin.\n").to_stdout
      end
    end

    context 'when training level is 3' do
      it 'outputs fire puff description' do
        bd.training = 3
        expect { 
          bd.train }.to output(
            "#{bd.name} squeaks and releases a scorching puff of fire directed at an unsuspecting"\
            " houseplant, setting it on fire briefly before you put it out.\n").to_stdout
      end
    end

    context 'when training level is 4' do
      it 'outputs hover description' do
        bd.training = 4
        expect { 
          bd.train }.to output(
            "#{bd.name} flaps their wings frantically before managing to hover briefly, a dazed"\
            " expression adorning their scaly face as they wonder how on earth they managed to"\
            " accomplish such a feat.\n").to_stdout
      end
    end
  end   
end
