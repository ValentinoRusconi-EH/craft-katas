class Statistics
  def initialize(numbers)
    @numbers = numbers
    @size = numbers.size
  end

  def mean
    @numbers.reduce(:+).to_f / @size
  end
end
