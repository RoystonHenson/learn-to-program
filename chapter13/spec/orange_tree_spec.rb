require 'orange_tree'

describe OrangeTree do
  let(:tree) { OrangeTree.new }

  describe '#initialize' do
    it 'has a height, age and no oranges yet' do
      expect(tree.height).to eq(3)
      expect(tree.age).to eq(0)
      expect(tree.oranges).to eq(0)
    end

    describe '#passage_of_time' do
      context 'the tree is 2 years old' do
        tree.age = 2
        it 'does not produce any oranges yet' do
          expect(tree.oranges).to eq(0)
        end
      end

      context 'the tree is over 2 years old' do
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

        describe '#harvest_oranges' do
          tree.harvest_oranges
          it 'removes all the oranges from the tree' do
            expect(tree.oranges).to eq(0)
          end
        end
      end
    end
  end
end