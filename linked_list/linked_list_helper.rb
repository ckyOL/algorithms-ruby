module LinkedListHelper
  def traversal(head)
    node = head
    until node.nil?
      print "#{node.val} " unless node.val.nil?
      node = node.next
    end
    puts
  end
end