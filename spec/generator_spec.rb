require 'generator'

describe Generator do
  
  describe '#allocate' do
    it 'adds three hexes to row_one' do
      subject.allocate
      p subject.row_one
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

    it 'adds four hexes to row_four' do
      subject.allocate
      expect(subject.row_four.length).to eq 4
    end

    it 'adds three hexes to row_five' do
      subject.allocate
      expect(subject.row_five.length).to eq 3
    end
  end

end