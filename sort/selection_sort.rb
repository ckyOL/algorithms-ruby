class SelectionSort
  # @param [Unsorted array] array
  # @return [Array]
  def selection(array)
    n = array.length
    (0...n - 1).each do |i|
      min = i
      (i + 1...n).each do |j|
        min = j if array[j] < array[min]
      end
      array[i], array[min] = array[min], array[i]
    end
    array
  end
end