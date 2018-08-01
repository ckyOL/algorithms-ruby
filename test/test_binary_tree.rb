require './tree/binary_tree'
require './tree/binary_tree_operator'
require 'minitest/autorun'

class BinaryTreeTest < Minitest::Test
  def setup
    @array_pre = [3, 2, 1]
    @array_in = [2, 3, 1]
    @array_post = [2, 1, 3]

    @root = TreeNode.new(3)
    @root.left = TreeNode.new(2)
    @root.right = TreeNode.new(1)

    @operator = BinaryTreeOperator.new
  end

  def test_traversal
    array1 = []
    array2 = []
    array3 = []

    @root.preorder { |x| array1 << x.val }
    @root.inorder { |x| array2 << x.val }
    @root.postorder { |x| array3 << x.val }

    assert_equal @array_pre, array1
    assert_equal @array_in, array2
    assert_equal @array_post, array3
  end

  def test_traversal_with_operator
    assert_equal @array_pre, @operator.traversal(@root, "preorder")
    assert_equal @array_in, @operator.traversal(@root, "inorder")
    assert_equal @array_post, @operator.traversal(@root, "postorder")
  end
end