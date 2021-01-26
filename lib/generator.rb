class Generator

  attr_reader :row_one

  def initialize
    @row_one = []
    @row_two = []
    @row_three = []
    @row_four = []
    @row_five = []
  end

  def allocate 
    @row_one = [1, 2, 3]
  end

end