require './tree/binary_tree'
require './tree/binary_tree_operator'
require './test/test_helper'
require 'minitest/autorun'

class BinaryTreePathTest < Minitest::Test
  include TestHelper
  def setup
    @array_pre = [1, 2, 4, 7, 3, 5, 6, 8]
    @array_in = [4, 7, 2, 1, 5, 3, 8, 6]
    @array_pre_left = [1, 2, 3, 4, 5]
    @array_in_left = [5, 4, 3, 2, 1]
    @array_pre_duo = [10, 5, 4, 7, 12]
    @array_in_duo = [4, 5, 7, 10, 12]

    tree = BinaryTree.new
    @root = tree.create(@array_pre, @array_in)
    tree_left = BinaryTree.new
    @root_left = tree_left.create(@array_pre_left, @array_in_left)
    tree_duo = BinaryTree.new
    @root_duo = tree_duo.create(@array_pre_duo, @array_in_duo)

    @root_single = TreeNode.new(1)

    @operator = BinaryTreeOperator.new
  end

  def test_find_path
    puts "test_find_path"
    puts_segmentation { @operator.find_path(@root, 14) }
    puts_segmentation { @operator.find_path(@root_left, 15) }
    puts_segmentation { @operator.find_path(@root_single, 1) }
    puts_segmentation { @operator.find_path(@root_duo, 22) }
  end

  def test_no_path
    puts "test_no_path"
    puts_segmentation { @operator.find_path(@root, 16) }
  end

end