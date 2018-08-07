class EightQueen
  def initialize
    @queen_place = Array.new(8)
    @solve = true
  end

  # @param [Int] x
  # @param [Int] y
  # @return [Bool]
  def can_place?(x, y)
    i = 0
    while i < x
      return false if @queen_place[i] == y || (i - x).abs == (@queen_place[i] - y).abs
      i += 1
    end
    true
  end

  # @param [Array] test_list
  # @return [String]
  def place_test(test_list)
    (0...test_list.length).each do |i|
      if can_place?(i, test_list[i])
        @queen_place[i] = test_list[i]
      else
        @solve = false
        break
      end
    end

    @solve ? 'Available Solution' : 'Unavailable Solution'
  end

  def print_checkerboard
    (0...8).each do |i|
      (0...8).each do |j|
        if @queen_place[i] != j
          print '☐'
        else
          print '♛'
        end
      end
      puts ' '
    end
  end
end