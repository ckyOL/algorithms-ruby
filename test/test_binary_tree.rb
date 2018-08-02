require './tree/binary_tree'
require './tree/binary_tree_operator'
require 'minitest/autorun'

class BinaryTreeTest < Minitest::Test
  def setup
    @array_pre = [1, 2, 4, 7, 3, 5, 6, 8]
    @array_in = [4, 7, 2, 1, 5, 3, 8, 6]
    @array_post = [7, 4, 2, 5, 8, 6, 3, 1]
    @array_layer = [1, 2, 3, 4, 5, 6, 7, 8]

    tree = BinaryTree.new
    @root = tree.create(@array_pre, @array_in)

    @operator = BinaryTreeOperator.new
  end

  def test_tree_build
    array_pre = [1, 2, 3]
    array_in = [2, 1, 3]
    array_post = [2, 3, 1]
    array = []

    tree = BinaryTree.new
    root = tree.create(array_pre, array_in)

    root.postorder { |x| array << x.val }

    assert_equal array_post, array
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

  def test_layer_traversal
    res = []
    @operator.layer_traversal(res, @root)
    assert_equal @array_layer, res
  end
end