require 'test/unit'
require_relative 'fizz_buzz'

class FizzBuzzTest < Test::Unit::TestCase

  # Called before every test method runs. Can be used
  # to set up fixture information.
  def setup
    # Do nothing
    @fb = FizzBuzz.new
  end

  # Called after every test method runs. Can be used to tear
  # down fixture information.

  def teardown
    # Do nothing
  end

  def test_input_multiples_three
    assert_equal(@fb.fizz_buzz2(3), 'Fizz')
  end

  def test_input_multiples_five
    assert_equal(@fb.fizz_buzz2(5), 'Buzz')
  end

  def test_input_multiples_both_three_and_five
    assert_equal(@fb.fizz_buzz2(15), 'FizzBuzz')
  end

  def test_input_not_multiples_three_or_five
    assert_equal(@fb.fizz_buzz2(7), 7)
  end
end