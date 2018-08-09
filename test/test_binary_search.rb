require './search/binary_search'
require 'minitest/autorun'

class BinarySearchTest < Minitest::Test

  def setup
    @array = [1, 3, 5, 7, 9]
    @array_even = [1, 2, 3, 4, 5, 6]
    @array_empty = []
    @search = BinarySearch.new
  end

  def test_binary_search_iterative
    (0...@array.length).each do |index|
      assert_equal index, @search.binary_search_iterative(@array, @array[index])
    end
    (0...@array_even.length).each do |index|
      assert_equal index, @search.binary_search_iterative(@array_even, @array_even[index])
    end
  end

  def test_binary_search_recursive
    (0...@array.length).each do |index|
      assert_equal index, @search.binary_search_recursive(@array,
                                                          0,
                                                          @array.length - 1,
                                                          @array[index])
    end
    (0...@array_even.length).each do |index|
      assert_equal index, @search.binary_search_recursive(@array_even,
                                                          0,
                                                          @array_even.length - 1,
                                                          @array_even[index])
    end
  end

  def test_invalid_input
    assert_equal -1, @search.binary_search_iterative(@array, 0)
    assert_equal -1, @search.binary_search_iterative(@array_empty, 1)

    assert_equal -1, @search.binary_search_recursive(@array, 0, @array.length - 1,0)
    assert_equal -1, @search.binary_search_recursive(@array_empty, 0, @array.length - 1,1)

    assert_equal -1, @search.binary_search_recursive(@array, -1, @array.length - 1, 3)
    assert_equal -1, @search.binary_search_recursive(@array, 0, @array.length, 3)
    assert_equal -1, @search.binary_search_recursive(@array, -1, @array.length + 1, 3)
  end
end