require './sort/quick_sort'
require 'minitest/autorun'

class QuickSortTest < Minitest::Test

  def setup
    @sort = QuickSort.new
    @array_odd = [2, 7, 3, 4, 1]
    @array_even = [59, 40, 55, 92, 73, 69, 27, 79, 3, 30]

    @array_odd_sorted = [1, 2, 3, 4, 7]
    @array_even_sorted = [3, 27, 30, 40, 55, 59, 69, 73, 79, 92]

    @array_empty = []
    @array_one = [1]
    @array_two = [5, 1]
    @array_two_sorted = [1, 5]
  end

  def test_quick_space
    assert_equal @array_odd_sorted, @sort.quick_space(@array_odd)
    assert_equal @array_even_sorted, @sort.quick_space(@array_even)
    assert_equal @array_empty, @sort.quick_space(@array_empty)
    assert_equal @array_one, @sort.quick_space(@array_one)
    assert_equal @array_two_sorted, @sort.quick_space(@array_two)
  end

  def test_quick
    assert_equal @array_odd_sorted, @sort.quick(@array_odd, 0, @array_odd.length)
    assert_equal @array_even_sorted, @sort.quick(@array_even, 0, @array_even.length)
    assert_equal @array_empty, @sort.quick(@array_empty, 0, @array_empty.length)
    assert_equal @array_one, @sort.quick(@array_one, 0, @array_one.length)
    assert_equal @array_two_sorted, @sort.quick(@array_two,0, @array_two.length)
  end
end