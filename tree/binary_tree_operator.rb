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
      preorder_turn(res, root.left)
      preorder_turn(res, root.right)
    end
  end

  # @param [Array] res
  # @param [TreeNode] root
  def inorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      inorder_turn(res, root.left)
      res << root.val
      inorder_turn(res, root.right)
    end
  end

  # @param [Array] res
  # @param [TreeNode] root
  def postorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      postorder_turn(res, root.left)
      postorder_turn(res, root.right)
      res << root.val
    end
  end

  # @param [Array] res
  # @param [TreeNode] root
  # @return [Array] res
  def layer_traversal(res, root)
    return res if root.nil?

    quote = []
    quote << root

    until quote.empty?
      node = quote.shift
      res << node.val

      quote << node.left if node.left
      quote << node.right if node.right
    end
  end
end