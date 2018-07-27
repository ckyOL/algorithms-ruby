require './search/binary_search'
require 'minitest/autorun'

class TestBinarySearch < Minitest::Test

  def setup
    @array = [1, 3, 5, 7, 9]
    @array_empty = []
    @search = BinarySearch.new
  end

  def test_binary_search_iteration
    assert_equal 0, @search.binary_search_iteration(@array, 1)
    assert_equal 1, @search.binary_search_iteration(@array, 3)
    assert_equal 2, @search.binary_search_iteration(@array, 5)
    assert_equal 3, @search.binary_search_iteration(@array, 7)
    assert_equal 4, @search.binary_search_iteration(@array, 9)
    assert_equal -1, @search.binary_search_iteration(@array, 0)
    assert_equal -1, @search.binary_search_iteration(@array_empty, 1)
  end

  def test_binary_search_recursion
    assert_equal 0, @search.binary_search_recursion(@array, 0, @array.length - 1, 1)
    assert_equal 1, @search.binary_search_recursion(@array, 0, @array.length - 1,3)
    assert_equal 2, @search.binary_search_recursion(@array, 0, @array.length - 1,5)
    assert_equal 3, @search.binary_search_recursion(@array, 0, @array.length - 1,7)
    assert_equal 4, @search.binary_search_recursion(@array, 0, @array.length - 1,9)
    assert_equal -1, @search.binary_search_recursion(@array, 0, @array.length - 1,0)
    assert_equal -1, @search.binary_search_recursion(@array_empty, 0, @array.length - 1,1)
  end
end