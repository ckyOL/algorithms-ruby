require './sort/selection_sort'
require 'minitest/autorun'

class SelectionSortTest < Minitest::Test

  def setup
    @sort = SelectionSort.new
    @array = [1, 7, 4, 5, 3, 2]
    @array_empty = []
    @array_one = [1]
    @array_sorted = [1, 2, 3, 4, 5, 7]
  end

  def test_bubble
    assert_equal @array_sorted, @sort.selection(@array)
    assert_equal @array_empty, @sort.selection(@array_empty)
    assert_equal @array_one, @sort.selection(@array_one)
  end
end