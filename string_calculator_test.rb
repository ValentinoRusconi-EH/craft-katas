require 'minitest/autorun'
require_relative 'string_calculator'

class StringCalculatorTest < Minitest::Test
  def test_sum
    string_calculator = StringCalculator.new

    assert_equal 317, string_calculator.sum('2,5,310')
  end

  def test_sum_zero
    string_calculator = StringCalculator.new

    assert_equal 0, string_calculator.sum('')
  end

  def test_sum_no_number
    string_calculator = StringCalculator.new

    assert_equal 0, string_calculator.sum('a')
  end

  def test_sum_negative_number
    string_calculator = StringCalculator.new

    assert_raises(RuntimeError, 'Negative Numbers are not allowed') do
      string_calculator.sum('-1,2,3')
    end
  end

  def test_sum_strip
    string_calculator = StringCalculator.new

    assert_equal 310, string_calculator.sum('\n, 2,5 ,303 ')
  end

  def test_comma
    string_calculator = StringCalculator.new

    assert_equal 0, string_calculator.sum(',0,')
  end

  def test_delimiters
    string_calculator = StringCalculator.new

    assert_equal 617, string_calculator.sum('2;5,310/300')
  end
end
