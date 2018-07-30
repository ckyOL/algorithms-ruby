class ListNode
  attr_accessor :val, :next
  def initialize(val)
    @val = val
    @next = nil
  end
end

class LinkList
  attr_reader :head
  def initialize
    @head = ListNode.new(nil)
    @last = @head
  end

  def add(val)
    @new_node = ListNode.new(val)
    @last.next = @new_node
    @last = @new_node
  end
end
