class Generator

  attr_reader :row_one, :row_two

  def initialize
    @row_one = []
    @row_two = []
    @row_three = []
    @row_four = []
    @row_five = []
  end

  def allocate 
    @row_one = [1, 2, 3]
    @row_two = [1, 2, 3, 4]
  end

end