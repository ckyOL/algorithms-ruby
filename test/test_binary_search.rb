require './search/binary_search'
require 'minitest/autorun'

class BinarySearchTest < Minitest::Test

  def setup
    @array = [1, 3, 5, 7, 9]
    @array_empty = []
    @search = BinarySearch.new
  end

  def test_binary_search_iterative
    (0...@array.length).each do |index|
      assert_equal index, @search.binary_search_iterative(@array, @array[index])
    end
    assert_equal -1, @search.binary_search_iterative(@array, 0)
    assert_equal -1, @search.binary_search_iterative(@array_empty, 1)
  end

  def test_binary_search_recursive
    (0...@array.length).each do |index|
      assert_equal index, @search.binary_search_recursive(@array,
                                                          0,
                                                          @array.length - 1,
                                                          @array[index])
    end
    assert_equal -1, @search.binary_search_recursive(@array, 0, @array.length - 1,0)
    assert_equal -1, @search.binary_search_recursive(@array_empty, 0, @array.length - 1,1)
  end
end