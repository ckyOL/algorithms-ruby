require './array/matrix_find'
require 'minitest/autorun'

class MatrixFindTest < Minitest::Test
  def setup
    @array = [
      [1, 2, 8, 9],
      [2, 4, 9, 12],
      [4, 7, 10, 13],
      [6, 8, 11, 15]
    ]
    @operator = MatrixFind.new
  end

  def test_find
    assert_equal true, @operator.find(@array, 4, 4, 7)
    assert_equal true, @operator.find(@array, 4, 4, 15)
    assert_equal true, @operator.find(@array, 4, 4, 1)
  end

  def test_not_find
    assert_equal false, @operator.find(@array, 4, 4, 5)
    assert_equal false, @operator.find(@array, 4, 4, 16)
    assert_equal false, @operator.find(@array, 4, 4, 0)
    assert_equal false, @operator.find(nil, 4, 4, 5)
    assert_equal false, @operator.find(@array, 0, 4, 5)
    assert_equal false, @operator.find(@array, 4, 0, 5)
  end
end