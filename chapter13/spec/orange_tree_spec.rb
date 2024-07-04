require 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe '#initialize' do
    it 'has a height, age, no oranges' do
      expect(tree.height).to eq(3)
      expect(tree.age).to eq(0)
      expect(tree.oranges).to eq(0)
    end
  end

  describe '#passage_of_time'do
    context 'when tree is alive' do
      context 'when tree is 2 years old' do
        it 'does not produce any oranges yet' do
          tree.age = 2
        expect(tree.oranges).to eq(0)
        end
      end

      context 'when tree is 3 years old' do
        it 'the tree grows an extra 3 feet' do
          tree.height = 6
          tree.passage_of_time
          expect(tree.height).to eq(9)
        end

        it 'the tree is one year older' do
          tree.age = 2
          tree.passage_of_time
          expect(tree.age).to eq(3)
        end

        it 'starts to grow oranges within the variable production range' do
          tree.passage_of_time
          expect(tree.oranges).to be_between(200, 250)
        end

        it 'oranges from the previous year have fallen off the tree' do
          tree.passage_of_time
          tree.passage_of_time
          expect(tree.oranges).to be_between(200, 250)
        end
      end
    end
    
    context 'when tree is not alive' do
      it 'raises error' do
        tree.age = 10
        expect { 
          tree.passage_of_time }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end
  
  describe '#inspect' do
    context 'when tree is alive' do
      it 'tells user tree height, age and amount of oranges' do
        tree.height = 9
        tree.age = 3
        tree.oranges = 200
        expect { 
          tree.inspect_tree }.to output(
            "As you take a closer look at the tree you can see that it is #{tree.height}"\
            " feet tall, #{tree.age} years old and has #{tree.oranges} oranges.").to_stdout
      end
    end

    context 'when tree is not alive' do
      it 'raises error' do
        tree.age = 10
        expect { 
          tree.inspect_tree }.to raise_error(
           RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end

  describe '#pick_oranges' do
    context 'when tree is alive' do
      context 'when enough oranges' do
        it 'reduces oranges' do
          tree.oranges = 5
          tree.pick_oranges(5)
          expect(tree.oranges).to eq(0)
        end
      end

      context 'when not enough oranges' do
        it "tells user there aren't enough oranges" do
          tree.oranges = 4
          expect { tree.pick_oranges(5) }.to output("There aren't enough oranges for that.\n").to_stdout
        end
      end
    end

    context 'when tree is not alive' do
      it 'raises error' do
        tree.age = 10
        expect { 
          tree.pick_oranges(5) }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end

  describe '#harvest_oranges' do
    context 'when tree is alive' do
      it 'removes all the oranges from the tree' do
        tree.oranges = 250
        tree.harvest_oranges
        expect(tree.oranges).to eq(0)
      end

      it 'tells user how many oranges have been harvested' do
        tree.oranges = 250
        expect { tree.harvest_oranges }.to output("Your harvest has yielded #{tree.oranges} oranges!\n").to_stdout
      end
    end

    context 'when tree is not alive' do
      it 'raises error' do
        tree.age = 10
        expect { 
          tree.harvest_oranges }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end    
    end
  end
end