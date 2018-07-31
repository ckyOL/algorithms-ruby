require './linked_list/linked_list'
require './linked_list/linked_list_operator'
require 'minitest/autorun'

class LinkedListTest < Minitest::Test
  def setup
    @empty_list = nil
    @array1 = [1, 2, 4]
    @array2 = [1, 3, 4]
    @array_merged = [1, 1, 2, 3, 4, 4]
    @array_reverse = [4, 4, 3, 2, 1, 1]

    @list1 = init_list(@array1)
    @list2 = init_list(@array2)
    @list_merged = init_list(@array_merged)

    @operator = LinkedListOperator.new
  end

  def init_list(array)
    list = LinkedList.new(array[0])
    array[1..-1].each do |i|
      list.add(i)
    end
    list
  end

  def test_traversal
    assert_equal @array1, @operator.output(@list1.head)
    assert_equal @array2, @operator.output(@list2.head)
    assert_equal @array_merged, @operator.output(@list_merged.head)
  end

  def test_reverse_list
    @node = @operator.reverse_list(@list_merged.head)
    assert_equal @array_reverse, @operator.output(@node)
  end

  def test_merge_two_list
    @node = @operator.merge_two_lists(@list1.head, @list2.head)
    assert_equal @array_merged, @operator.output(@node)
  end

  def test_merge_with_empty
    @node = @operator.merge_two_lists(@list1.head, @empty_list)
    assert_equal @array1, @operator.output(@node)
  end
end