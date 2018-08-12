class LinkedListOperator

  # @param [ListNode] head LinkedList.head
  # @param [String] order
  # @return [Array] res
  def traversal(head, order)
    res = []
    send("#{order}_traversal", head, res)
  end

  # @param [Array] res
  # @param [ListNode] head LinkedList.head
  # @return [Array] res
  def order_traversal(head, res)
    until head.nil?
      res << head.val unless head.val.nil?
      head = head.next_node
    end
    res
  end

  # @param [Array] res
  # @param [ListNode] head LinkedList.head
  # @return [Array] res
  def reverse_traversal(head, res)
    return res if head.nil?

    if head
      reverse_traversal(head.next_node, res)
      res << head.val
    end
  end

  # @param [ListNode] head LinkedList.head
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

  # @param [ListNode] list1
  # @param [ListNode] list2
  # @return [ListNode] common_node
  def common_node(list1, list2)
    return nil if list1.nil? || list2.nil?

    list1_length = 0
    list2_length = 0
    list1.traversal { |x| list1_length += 1 unless x.nil? }
    list2.traversal { |x| list2_length += 1 unless x.nil? }

    length_diff = (list1_length - list2_length).abs

    if list1_length >= list2_length
      long_list_head = list1
      short_list_head = list2
    else
      long_list_head = list2
      short_list_head = list1
    end

    (0...length_diff).each do
      long_list_head = long_list_head.next_node
    end

    while !long_list_head.nil? && !short_list_head.nil? && long_list_head != short_list_head
      long_list_head = long_list_head.next_node
      short_list_head = short_list_head.next_node
    end

    long_list_head
  end
end