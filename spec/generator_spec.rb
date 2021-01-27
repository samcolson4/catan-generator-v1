require 'generator'

describe Generator do
  describe '#allocate_hexes' do

    it 'sets board_hexes to an array the same length as hexes' do
      subject.allocate_hexes
      expect(subject.board_hexes.length).to eq subject.hexes.length
    end

    it 'contains wheat' do
      subject.allocate_hexes
      expect(subject.board_hexes).to include("wheat")
    end

    it 'contains ore' do
      subject.allocate_hexes
      expect(subject.board_hexes).to include("wheat")
    end

    it 'does not contain a hex that does not exist' do
      subject.allocate_hexes
      expect(subject.board_hexes).to_not include("sand")
    end

    it 'raises an error if there hexes and numbers are not equal' do
      numbers = [5, 2, 6, 3, 8, 10, 9, 12, 11, 4, 8, 10, 9, 4, 5, 6, 3, 11, 13, 13]
      board = Generator.new(numbers: numbers)
      expect { board.allocate_hexes }.to raise_error("Hexes and numbers are not equal")
    end
  end

  describe '#allocate_numbers' do
    it 'does not change the number of values in the array' do
      subject.allocate_numbers
      expect(subject.board_numbers.length).to eq subject.numbers.length
    end

    it 'contains a 10' do
      subject.allocate_numbers
      expect(subject.board_numbers).to include 10
    end

    it 'raises an error if there hexes and numbers are not equal' do
      numbers = [5, 2, 6, 3, 8, 10, 9, 12, 11, 4, 8, 10, 9, 4, 5, 6, 3, 11, 13, 13]
      board = Generator.new(numbers: numbers)
      expect { board.allocate_numbers }.to raise_error("Hexes and numbers are not equal")
    end
  end
end
