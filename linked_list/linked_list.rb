class ListNode
  attr_accessor :val, :next_node
  def initialize(val)
    @val = val
    @next_node = nil
  end

  def traversal(&block)
    yield(self)
    next_node.traversal(&block) if next_node
  end

  def reverse_traversal(&block)
    next_node.reverse_traversal(&block) if next_node
    yield(self)
  end
end

class LinkedList
  def create(array)
    head = ListNode.new(array[0])
    last = head
    array[1..-1].each do |i|
      last.next_node = ListNode.new(i)
      last = last.next_node
    end
    head
  end
end

