require './sort/merge_sort'
require 'minitest/autorun'

class MergeSortTest < Minitest::Test

  def setup
    @sort = MergeSort.new
    @array_odd = [2, 7, 3, 4, 1]
    @array_odd_sorted = [1, 2, 3, 4, 7]
    @array_even = [1, 7, 4, 5, 3, 2]
    @array_even_sorted = [1, 2, 3, 4, 5, 7]
    @array_empty = []
    @array_one = [1]
    @array_two = [5, 1]
    @array_two_sorted = [1, 5]
  end

  def test_merge_recursive
    assert_equal @array_odd_sorted, @sort.merge_sort_recursive(@array_odd)
    assert_equal @array_even_sorted, @sort.merge_sort_recursive(@array_even)
    assert_equal @array_empty, @sort.merge_sort_recursive(@array_empty)
    assert_equal @array_one, @sort.merge_sort_recursive(@array_one)
    assert_equal @array_two_sorted, @sort.merge_sort_recursive(@array_two)
  end
end