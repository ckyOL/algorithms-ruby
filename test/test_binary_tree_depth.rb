require './tree/binary_tree'
require './tree/binary_tree_operator'
require 'minitest/autorun'

class BinaryTreeTest < Minitest::Test
  def setup
    @array_pre = [1, 2, 4, 7, 3, 5, 6, 8]
    @array_in = [4, 7, 2, 1, 5, 3, 8, 6]
    @array_pre_left = [1, 2, 3, 4, 5]
    @array_in_left = [5, 4, 3, 2, 1]
    @array_pre_right = [1, 2, 3, 4, 5]
    @array_in_right = [1, 2, 3, 4, 5]

    tree = BinaryTree.new
    @root = tree.create(@array_pre, @array_in)
    tree_left = BinaryTree.new
    @root_left = tree_left.create(@array_pre_left, @array_in_left)
    tree_right = BinaryTree.new
    @root_right = tree_right.create(@array_pre_right, @array_in_right)

    @root_single = TreeNode.new(1)

    @operator = BinaryTreeOperator.new
  end

  def test_depth
    assert_equal 4, @operator.depth(@root)
    assert_equal 1, @operator.depth(@root_single)
    assert_equal 0, @operator.depth(nil)
    assert_equal 5, @operator.depth(@root_left)
    assert_equal 5, @operator.depth(@root_right)
  end
end