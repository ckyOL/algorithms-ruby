class LinkedListOperator
  # @param [LinkedList :head] head
  def traversal(head)
    node = head
    until node.nil?
      print "#{node.val} " unless node.val.nil?
      node = node.next
    end
    puts
  end

  # @param [LinkedList :head] head
  # @return [Array] out
  def output(head)
    node = head
    out = []
    until node.nil?
      out << node.val unless node.val.nil?
      node = node.next
    end
    out
  end

  # @param [ListNode] l1 LinkedList.head
  # @param [ListNode] l2 LinkedList.head
  # @return [ListNode] node
  def merge_two_lists(l1, l2)
    if l1.nil?
      return l2
    elsif l2.nil?
      return l1
    end

    node = nil

    if l1.val < l2.val
      node = l1
      node.next = merge_two_lists(l1.next, l2)
    else
      node = l2
      node.next = merge_two_lists(l1, l2.next)
    end
    node
  end

end