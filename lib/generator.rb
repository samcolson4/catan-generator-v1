class Generator

  attr_reader :row_one, :row_two, :row_three, :row_four, :row_five

  def initialize
    @row_one = []
    @row_two = []
    @row_three = []
    @row_four = []
    @row_five = []
    @board = [@row_one, @row_two, @row_three, @row_four, @row_five]
  end

  def allocate
    row_full?
    @row_one = [1, 2, 3]
    @row_two = [1, 2, 3, 4]
    @row_three = [1, 2, 3, 4, 5]
    @row_four = [1, 2, 3, 4]
    @row_five = [1, 2, 3]
  end

  private
  def row_full?
    @row_one.length <= 3
    @row_two.length <= 4
    @row_three.length <= 5
    @row_four.length <= 4
    @row_five.length <= 3
  end

end