class Generator

  HEXES = ["wheat", "wheat", "wheat", "wheat", "ore", "ore", "ore", "brick", "brick", "brick", "sheep", "sheep", "sheep", "sheep", "lumber", "lumber", "lumber", "lumber", "lumber", "desert"]

  attr_reader :row_one, :row_two, :row_three, :row_four, :row_five, :hexes

  def initialize(hexes = HEXES)
    @row_one = []
    @row_two = []
    @row_three = []
    @row_four = []
    @row_five = []
    @board = [@row_one, @row_two, @row_three, @row_four, @row_five]
    @hexes = hexes
  end

  def allocate
  end

  def randomise_and_pick
    index = rand(0..@hexes.length)
    hex = @hexes[index]
    @hexes.delete_at(index)
    hex
  end

  private

end
