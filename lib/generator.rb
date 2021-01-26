class Generator

  HEXES = ["wheat", "wheat", "wheat", "wheat", "ore", "ore", "ore", "brick", "brick", "brick", "sheep", "sheep", "sheep", "sheep", "lumber", "lumber", "lumber", "lumber", "lumber", "desert"]

  attr_reader :row_one, :row_two, :row_three, :row_four, :row_five

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
    @board.each { |row|
      while !rows_full?
        row << "hex"
      end
      # row << "hex"
      # row << "hex"
      
    }
    # @row_one = [1, 2, 3]
    # @row_two = [1, 2, 3, 4]
    # @row_three = [1, 2, 3, 4, 5]
    # @row_four = [1, 2, 3, 4]
    # @row_five = [1, 2, 3]
  end

  private

  def rows_full?
    row_one_full? ||  row_two_full?
  end

  def row_one_full?
    @row_one.length == 3
  end

  def row_two_full?
    @row_two.length == 4
  end

  def row_not_full?
    @row_two.length < 4
    @row_three.length < 5
    @row_four.length < 4
    @row_five.length < 3
  end

end