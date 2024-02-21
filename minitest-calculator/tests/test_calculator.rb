# tests/test_calculator.rb

require 'minitest/autorun' # This line loads the MiniTest framework.
require './calculator' #This line loads our Calculator class.

class TestCalculator < Minitest::Test #  We define a test class that inherits from Minitest::Test.
  def test_addition # Our first test method. In MiniTest, any method that begins with test_ is automatically run as a test.
    calculator = Calculator.new
    # The assertion. We’re checking if the add method returns 4 when given 2 and 2.
    assert_equal 4, calculator.add(2, 2), "Addition method failed"
  end

  # tests/test_calculator.rb


  def test_subtraction
    calculator = Calculator.new
    assert_equal 0, calculator.subtract(2, 2), "Subtraction method failed"
  end
end
