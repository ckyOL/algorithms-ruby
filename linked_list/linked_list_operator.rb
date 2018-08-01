class LinkedListOperator

  # @param [LinkedList :head] head
  # @param [String] order
  # @return [Array] res
  def traversal(head, order)
    res = []
    send("#{order}_traversal", res, head)
  end

  # @param [Array] res
  # @param [LinkedList :head] head
  # @return [Array] res
  def order_traversal(res, head)
    until head.nil?
      res << head.val unless head.val.nil?
      head = head.next_node
    end
    res
  end

  # @param [Array] res
  # @param [LinkedList :head] head
  # @return [Array] res
  def reverse_traversal(res, head)
    return res if head.nil?

    if head
      reverse_traversal(res, head.next_node)
      res << head.val
    end
  end

  # @param [LinkedList :head] head
  # @return [ListNode] reverse_head
  def reverse_list(head)
    reverse_head = nil
    node = head
    node_prev = nil

    until node.nil?
      node_next = node.next_node

      reverse_head = node if node_next.nil?

      node.next_node = node_prev
      node_prev = node
      node = node_next
    end
    reverse_head
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
      node.next_node = merge_two_lists(l1.next_node, l2)
    else
      node = l2
      node.next_node = merge_two_lists(l1, l2.next_node)
    end
    node
  end

end