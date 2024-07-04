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
      tree.age = 2
      context 'when tree is 2 years old' do
        it 'does not produce any oranges yet' do
        expect(tree.oranges).to eq(0)
        end
      end

      context 'when tree is 3 years old' do
        tree.passage_of_time
        it 'the tree grows an extra 3 feet' do
          expect(tree.height).to eq(9)
        end

        it 'the tree is one year older' do
          expect(tree.age).to eq(3)
        end

        it 'starts to grow oranges within the variable production range' do
          expect(tree.oranges).to be_between(200, 250)
        end

        it 'oranges from the previous year have fallen off the tree' do
          tree.passage_of_time
          expect(tree.oranges).to be_between(200, 250)
        end
      end
    end
    
    context 'when tree is not alive' do
      it 'raises error' do
        tree.alive = false
        expect(
          tree.passage_of_time).to raise_error(
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
        expect(tree.inspect_tree).to include('9 feet', '3 years old', '200 oranges')
      end
    end

    context 'when tree is not alive' do
      it 'raises error' do
        tree.alive = false
        expect(
          tree.inspect).to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end
    end
  end

  describe '#pick_oranges' do
    context 'when tree is alive' do
      it 'picks an amount of oranges' do
        tree.oranges = 5
        tree.pick_oranges(5)
        expect(tree.oranges).to eq(0)
      end
    end

    context 'when tree is not alive' do
      it 'raises error' do
        tree.alive = false
        expect(
          tree.pick_oranges).to raise_error(
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
      it 'raises error' do
        tree.alive = false
        expect(
          tree.harvest_oranges).to raise_error(
            RuntimeError, 'The tree has died and you are unable to interact with it. You will need to plant another tree.')
      end    
    end
  end
end

=begin
    error = 'The tree has died and you are unable to interact with it. You will need to plant another tree.'

      As a user, so I can grow my own oranges, I want to grow an orange tree which produces oranges.
      As a user, so my tree can simulate a real orange tree, i want it not to produce oranges for the first few years.
      As a user so I can skip to next year, I want to be able to pass time.
      As a user, so I can see my tree growing, I want my tree to get taller each year.
      As a user, so I can see the height, age and amount of oranges at any, I want to be able to inspect it.
      As a user, so I can make orange juice, I want to be able to pick an amount of oranges from the tree.
      As a user, so I can sell all my oranges, I want to be able to harvest all the oranges from the tree.
    As a user, to make my tree more realistic, I want the tree to have a finite life.
=end