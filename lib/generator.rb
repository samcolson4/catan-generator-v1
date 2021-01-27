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
    @board.each { |row| 
    length = row_length(row)
    while row.length < length
      row << randomise_and_pick
    end
    }
    top_up
  end

  def randomise_and_pick
    index = rand(0..@hexes.length)
    hex = @hexes[index]
    @hexes.delete_at(index)
    hex
  end

  private
  def row_length(row)
    if row == @board[0] || row == @board[4]
      3
    elsif row == @board[1] || row == @board[3]
      4
    else
      5
    end
  end

  def top_up
    @row_two << randomise_and_pick
    @row_four << randomise_and_pick
    @row_three << randomise_and_pick
    @row_three << randomise_and_pick
  end

end
