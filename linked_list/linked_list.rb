class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
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
    @last.next = @new_node
    @last = @new_node
  end
end
