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
  end

end