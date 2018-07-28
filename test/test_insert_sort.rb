require './sort/insert_sort'
require 'minitest/autorun'

class InsertSortTest < Minitest::Test

  def setup
    @sort = InsertSort.new
    @array = [1, 7, 4, 5, 3, 2]
    @array_empty = []
    @array_one = [1]
    @array_sorted = [1, 2, 3, 4, 5, 7]
  end

  def test_bubble
    assert_equal @array_sorted, @sort.insert(@array)
    assert_equal @array_empty, @sort.insert(@array_empty)
    assert_equal @array_one, @sort.insert(@array_one)
  end
end