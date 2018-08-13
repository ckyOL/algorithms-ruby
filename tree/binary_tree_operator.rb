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

  # @param [TreeNode] root
  # @param [Int] num
  def find_path(root, num)
    return nil if root.nil?
    path = []
    sum = 0
    path_operator(root, num, path, sum)
  end

  # @param [TreeNode] root
  # @param [Int] num
  # @param [Array] path
  # @param [Int] sum
  def path_operator(root, num, path, sum)
    sum += root.val
    path << root.val

    is_leaf = root.left.nil? && root.right.nil?
    if sum == num && is_leaf
      puts 'path: '
      path.each { |x| print "#{x} " }
      puts
    end
    
    path_operator(root.left, num, path, sum) unless root.left.nil?
    path_operator(root.right, num, path, sum) unless root.right.nil?

    path.pop
  end

  # @param [TreeNode] root
  # @return [Int]
  def depth(root)
    return 0 if root.nil?

    left = depth(root.left)
    right = depth(root.right)

    left > right ? left + 1 : right + 1
  end
end