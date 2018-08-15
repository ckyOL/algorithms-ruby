class MatrixFind
  def find(array, row, col, num)
    found = false
    if !array.nil? && row > 0 && col > 0
      cur_col = col - 1
      cur_row = 0

      while cur_row < row && cur_col >= 0
        if array[cur_row][cur_col] == num
          found = true
          break
        elsif array[cur_row][cur_col] > num
          cur_col -= 1
        else
          cur_row += 1
        end
      end
    end
    found
  end
end
