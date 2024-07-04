require 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe '#initialize' do
    it 'has a height, age, no oranges and is alive' do
      expect(tree.height).to eq(3)
      expect(tree.age).to eq(0)
      expect(tree.oranges).to eq(0)
      expect(tree.alive).to eq(true)
    end
  end

  describe '#passage_of_time' do
    context 'when tree is alive' do
      context 'when tree is 2 years old' do
        let(:age) { 2 }

        it 'does not produce any oranges yet' do
        expect(tree.oranges).to eq(0)
        end
      end

      context 'when tree is 3 years old' do
        let(:height) { 6 }
        let(:age)    { 2 }
        
        it 'the tree grows an extra 3 feet' do
          tree.passage_of_time
          expect(tree.height).to eq(9)
        end

        it 'the tree is one year older' do
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
      let(:alive) { false }

      it 'raises error' do
        expect{ 
          tree.passage_of_time }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end
  
  describe '#inspect' do
    context 'when tree is alive' do
      let(:height)   { 9 }
      let(:age)      { 3 }
      let (:oranges) { 200 }

      it 'tells user tree height, age and amount of oranges' do
        expect(tree.inspect_tree).to include('9 feet', '3 years old', '200 oranges')
      end
    end

    context 'when tree is not alive' do
      let(:alive) { false }

      it 'raises error' do
        expect{ 
          tree.inspect }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end

  describe '#pick_oranges' do
    context 'when tree is alive' do
      let(:oranges) { 5 }

      it 'picks an amount of oranges' do
        tree.pick_oranges(5)
        expect(tree.oranges).to eq(0)
      end
    end

    context 'when tree is not alive' do
      let(:alive) { false }

      it 'raises error' do
        expect { 
          tree.pick_oranges }.to raise_error(
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
    end

    context 'when tree is not alive' do
      let(:alive) { false }

      it 'raises error' do
        expect { 
          tree.harvest_oranges }.to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end    
    end
  end
end