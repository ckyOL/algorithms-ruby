require './linked_list/linked_list'
require './linked_list/linked_list_operator'
require 'minitest/autorun'

class LinkedListTest < Minitest::Test
  def setup
    @empty_list = LinkedList.new
    @array1 = [1, 2, 4]
    @array2 = [1, 3, 4]
    @array_merged = [1, 1, 2, 3, 4, 4]

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
    @operator.traversal(@list1.head)
    @operator.traversal(@list2.head)
    @operator.traversal(@list_merged.head)

    p @operator.output(@list1.head)
    p @operator.output(@list2.head)
    p @operator.output(@list_merged.head)
  end

  def test_merge_two_list
    @node = @operator.merge_two_lists(@list1.head, @list2.head)
    assert_equal @array_merged, @operator.output(@node)
  end
end