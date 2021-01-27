require 'generator'

describe Generator do
  describe '#randomise_and_pick' do
    it 'removes one hex from the total list' do
      expect { subject.randomise_and_pick }.to change { subject.hexes.length }.by(-1)
    end

    it 'returns the name of a hex' do
      expect(subject.randomise_and_pick).to be_a(String)
    end

    it 'returns "wheat" when set to index 0' do
      srand(4)
      expect(subject.randomise_and_pick).to eq "lumber"
    end
  end

  describe '#allocate_hexes' do
    it 'adds three hexes to row_one' do
      subject.allocate_hexes
      expect(subject.row_one.length).to eq 3
    end

    it 'adds four hexes to row_two' do
      subject.allocate_hexes
      expect(subject.row_two.length).to eq 4
    end

    it 'adds five hexes to row_three' do
      subject.allocate_hexes
      expect(subject.row_three.length).to eq 5
    end

    it 'adds four hexes to row_four' do
      subject.allocate_hexes
      expect(subject.row_four.length).to eq 4
    end

    it 'adds three hexes to row_five' do
      subject.allocate_hexes
      expect(subject.row_five.length).to eq 3
    end
  end

end