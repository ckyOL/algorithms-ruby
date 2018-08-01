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



