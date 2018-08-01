class BinaryTreeOperator
  # @param [TreeNode] root
  # @param [String] order
  # @return [Array]
  def traversal(root, order)
    res = []
    send("#{order}_turn", res, root)
  end

  # @param [Array] res
  # @param [TreeNode] root
  def preorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res << root.val
      res = preorder_turn(res, root.left)
      res = preorder_turn(res, root.right)
    end
    res
  end

  # @param [Array] res
  # @param [TreeNode] root
  def inorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res = inorder_turn(res, root.left)
      res << root.val
      res = inorder_turn(res, root.right)
    end
    res
  end

  # @param [Array] res
  # @param [TreeNode] root
  def postorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res = postorder_turn(res, root.left)
      res = postorder_turn(res, root.right)
      res << root.val
    end
    res
  end
end