require './linked_list/linked_list'
require './linked_list/linked_list_operator'
require 'minitest/autorun'

class LinkedListTest < Minitest::Test
  def setup
    @empty_list = nil
    @array_single = [1]
    @array1 = [1, 2, 4]
    @array2 = [1, 3, 4]
    @array_merged = [1, 1, 2, 3, 4, 4]
    @array_reverse = [4, 4, 3, 2, 1, 1]

    @list1 = init_list(@array1)
    @list2 = init_list(@array2)
    @list_single = init_list(@array_single)
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
    array = []
    @list1.head.traversal { |x| array << x.val }
    assert_equal @array1, array
  end

  def test_reverse_traversal
    array = []
    @list_merged.head.reverse_traversal { |x| array << x.val }
    assert_equal @array_reverse, array
  end

  def test_traversal_with_operator
    assert_equal @array1, @operator.traversal(@list1.head, "order")
    assert_equal @array2, @operator.traversal(@list2.head, "order")
    assert_equal @array_merged, @operator.traversal(@list_merged.head, "order")
    assert_equal @array_single, @operator.traversal(@list_single.head, "order")
    assert_equal [], @operator.traversal(@empty_list, "order")
  end

  def test_reverse_traversal_with_operator
    assert_equal @array_reverse, @operator.traversal(@list_merged.head, "reverse")
    assert_equal @array_single, @operator.traversal(@list_single.head, "reverse")
    assert_equal [], @operator.traversal(@empty_list, "reverse")
  end

  def test_reverse_list
    @node = @operator.reverse_list(@list_merged.head)
    assert_equal @array_reverse, @operator.traversal(@node, "order")
  end

  def test_merge_two_list
    @node = @operator.merge_two_lists(@list1.head, @list2.head)
    assert_equal @array_merged, @operator.traversal(@node, "order")
  end

  def test_merge_with_empty
    @node = @operator.merge_two_lists(@list1.head, @empty_list)
    assert_equal @array1, @operator.traversal(@node, "order")
  end
end