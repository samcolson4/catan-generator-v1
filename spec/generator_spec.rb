require 'generator'

describe Generator do
  
  describe '#allocate' do
    it 'adds three hexes to row one' do
      subject.allocate
      expect(subject.row_one.length).to eq 3
    end
  end

end