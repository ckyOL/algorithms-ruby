class TreeNode
  attr_accessor :val, :left, :right
  def initialize(val)
    @val = val
    @left = nil
    @right = nil
  end

  def preorder(&block)
    yield(self)
    left.preorder(&block) if left
    right.preorder(&block) if right
  end

  def inorder(&block)
    left.inorder(&block) if left
    yield(self)
    right.inorder(&block) if right
  end

  def postorder(&block)
    left.postorder(&block) if left
    right.postorder(&block) if right
    yield(self)
  end
end

class BinaryTree
  def create(preorder, inorder)
    return nil if preorder.nil? || inorder.nil?
    tree_builder(preorder, 0, preorder.length - 1,
                 inorder, 0, inorder.length - 1)
  end

  def tree_builder(preorder, start_pre, end_pre,
                   inorder, start_in, end_in)
    return nil if start_pre > end_pre || start_in > end_in

    root = TreeNode.new(preorder[start_pre])

    (start_in..end_in).each do |i|
      if inorder[i] == preorder[start_pre]
        left_start = start_pre + 1
        left_end = left_start + (i - start_in)
        root.left = tree_builder(preorder, left_start, left_end,
                                 inorder, start_in, i - 1)

        root.right = tree_builder(preorder, left_end, end_pre,
                                  inorder, i + 1, end_in)

      end
    end
    root
  end
end