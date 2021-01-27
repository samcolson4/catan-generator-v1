require 'generator'

describe Generator do
  describe '#allocate_hexes' do
    it 'sets board_hexes to an array the same length as hexes' do
      subject.allocate_hexes
      expect(subject.board_hexes.length).to eq subject.hexes.length
    end
  end

  describe '#allocate_numbers' do

  end

end