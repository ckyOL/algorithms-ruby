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
  attr_reader :head
  def initialize(val = nil)
    @head = ListNode.new(val)
    @last = @head
  end

  def add(val)
    @new_node = ListNode.new(val)
    @last.next_node = @new_node
    @last = @new_node
  end
end

