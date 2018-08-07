require './eight_queen/eight_queen'
require 'minitest/autorun'

class EightQueenTest < Minitest::Test

  def setup
    @eight_queen = EightQueen.new
    @test_list1 = [3, 6, 2, 7, 1, 4, 0, 5]
    @test_list2 = [0, 1, 3, 6, 2, 7, 5, 4]
  end

  def test_place
    assert_equal 'Available Solution', @eight_queen.place_test(@test_list1)
    assert_equal 'Unavailable Solution', @eight_queen.place_test(@test_list2)
  end

  def test_print_checkerboard
    board = EightQueen.new
    board.place_test(@test_list1)
    board.print_checkerboard
  end
end