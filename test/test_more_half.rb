require './array/more_half'
require 'minitest/autorun'

class MoreHalfTest < Minitest::Test

  def setup
    @operator = MoreHalf.new
    @array = [1, 2, 3, 2, 2, 2, 5, 4, 2]
    @array_nothalf = [1, 1, 2, 2, 3, 3]
  end

  def test_more_half
    assert_equal 2, @operator.more_than_half_num(@array)
  end

  def test_not_half
    assert_equal 0, @operator.more_than_half_num(@array_nothalf)
  end

  def test_invalid
    assert_nil @operator.more_than_half_num(nil)
  end
end