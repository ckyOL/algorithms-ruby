require './array/num_with_sum'
require 'minitest/autorun'

class NumWithSumTest < Minitest::Test
  def setup
    @array = [1, 2, 4, 7, 11, 15]
    @array2 = [1,2,7,11,16]
    @index = [4, 11]
    @index2 = [1, 16]
    @single = [1]
    @operator = NumWithSum.new
  end

  def test_num
    assert_equal @index, @operator.find_num(@array, 15)
    assert_equal @index2, @operator.find_num(@array2, 17)
  end

  def test_not_found
    assert_equal false, @operator.find_num(@array, 99)
    assert_equal false, @operator.find_num(nil, 15)
    assert_equal false, @operator.find_num(@single, 1)
  end
end