require 'generator'

describe Generator do
  
  describe '#allocate' do
    it 'adds three hexes to row_one' do
      subject.allocate
      expect(subject.row_one.length).to eq 3
    end

    it 'adds four hexes to row_two' do
      subject.allocate
      expect(subject.row_two.length).to eq 4
    end

    it 'adds five hexes to row_three' do
      subject.allocate
      expect(subject.row_three.length).to eq 5
    end

  end

end