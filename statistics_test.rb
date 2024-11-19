require 'minitest/autorun'
require_relative 'statistics'

class StatisticsTest < Minitest::Test
  def test_mean
    statistics = Statistics.new([1, 2, 3, 4, 5])
    assert_equal 3.0, statistics.mean
  end
end
