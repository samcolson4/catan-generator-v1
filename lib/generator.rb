class Generator

  HEXES = ["wheat", "wheat", "wheat", "wheat", "ore", "ore", "ore", "brick", "brick", "brick", "sheep", "sheep", "sheep", "sheep", "lumber", "lumber", "lumber", "lumber", "desert"]

  NUMBERS = [5, 2, 6, 3, 8, 10, 9, 12, 11, 4, 8, 10, 9, 4, 5, 6, 3, 11]

  attr_reader :hexes, :board_hexes, :numbers, :board_numbers

  def initialize(hexes: hexes = HEXES, numbers: numbers = NUMBERS)
    @board_hexes = []
    @board_numbers = []
    @hexes = hexes
    @numbers = numbers
  end

  def create_board
    allocate_hexes
    allocate_numbers
  end

  def allocate_hexes
    if !is_hex_num_equal? 
      raise "Hexes and numbers are not equal"
    else
      @board_hexes = @hexes.shuffle
    end
  end

  def allocate_numbers
    if !is_hex_num_equal? 
      raise "Hexes and numbers are not equal"
    else
      @board_numbers = @numbers.shuffle
    end
  end

  private
  def is_hex_num_equal?
    @hexes.length == @numbers.length + 1
  end

end
