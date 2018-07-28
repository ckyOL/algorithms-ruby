require './sort/bubble_sort'
require 'minitest/autorun'

class BubbleSortTest < Minitest::Test

  def setup
    @sort = BubbleSort.new
    @array = [1, 7, 4, 5, 3, 2]
    @array_empty = []
    @array_one = [1]
    @array_sorted = [1, 2, 3, 4, 5, 7]
  end

  def test_bubble
    assert_equal @array_sorted, @sort.bubble(@array)
    assert_equal @array_empty, @sort.bubble(@array_empty)
    assert_equal @array_one, @sort.bubble(@array_one)
  end
end