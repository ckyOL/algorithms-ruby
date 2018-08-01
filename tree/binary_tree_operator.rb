class BinaryTreeOperator
  def traversal(root, order)
    res = []
    res = self.send("#{order}_turn", res, root)
    res
  end

  def preorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res.append(root.val)
      res = preorder_turn(res, root.left)
      res = preorder_turn(res, root.right)
    end
    res
  end

  def inorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res = inorder_turn(res, root.left)
      res.append(root.val)
      res = inorder_turn(res, root.right)
    end
    res
  end

  def postorder_turn(res, root)
    return res if root.nil?

    unless root.nil?
      res = postorder_turn(res, root.left)
      res = postorder_turn(res, root.right)
      res.append(root.val)
    end
    res
  end
end