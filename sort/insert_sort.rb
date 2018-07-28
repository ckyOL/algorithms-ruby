class InsertSort
  # @param [Unsorted array] array
  # @return [Array]
  def insert(array)
    n = array.length
    return array if n == 1 || n == 0

    (1...n).each do |i|
      temp = array[i]
      j = i - 1
      while j >= 0 && temp < array[j]
        array[j + 1] = array[j]
        j -= 1
      end
      array[j + 1] = temp
    end
    array
  end
end

