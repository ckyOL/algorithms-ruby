require './linked_list/linked_list'
require './linked_list/linked_list_operator'
require 'minitest/autorun'

class CommonNodeTest < Minitest::Test
  def setup
    @array1 = [1, 2, 3, 6, 7]
    @array2 = [4, 5]
    @operator = LinkedListOperator.new
  end

  def set_common(list1, list2, val)
    common_node = nil
    list1.traversal { |x| common_node = x if x.val == val }
    last = nil
    list2.traversal { |x| last = x if x.next_node.nil? }
    last.next_node = common_node

    common_node
  end

  def test_list_length
    count = 0
    list1 = LinkedList.new.create(@array1)
    list1.traversal { |x| count += 1 unless x.nil? }
    assert_equal 5, count
  end

  def test_common_node
    list1 = LinkedList.new.create(@array1)
    list2 = LinkedList.new.create(@array2)
    common_node = set_common(list1, list2, 6)
    assert_equal common_node, @operator.common_node(list1, list2)
  end

  def test_common_node_nil
    assert_nil @operator.common_node(nil, nil)
    assert_nil @operator.common_node(@list1, nil)
    assert_nil @operator.common_node(nil, @list2)
  end

  def test_common_node_last
    list1 = LinkedList.new.create(@array1)
    list2 = LinkedList.new.create(@array2)
    common_node = set_common(list1, list2, 7)
    assert_equal common_node, @operator.common_node(list1, list2)
  end

  def test_common_node_error
    list1 = LinkedList.new.create(@array1)
    list2 = LinkedList.new.create(@array2)

    assert_nil @operator.common_node(list1, list2)
  end

  def test_common_node_list2_long
    list1 = LinkedList.new.create(@array2)
    list2 = LinkedList.new.create(@array1)
    common_node = set_common(list2, list1, 6)
    assert_equal common_node, @operator.common_node(list1, list2)
  end

  def test_common_node_head
    list1 = LinkedList.new.create(@array1)
    common_node = list1
    assert_equal common_node, @operator.common_node(list1, list1)
  end
end