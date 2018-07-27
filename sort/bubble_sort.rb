class BubbleSort
  # @param [Unsorted array] array
  # @return [Array]
  def bubble(array)
    n = array.length
    (0...n - 1).each do |i|
      (0...n - 1 - i).each do |j|
        if array[j] > array[j + 1]
          array[j], array[j + 1] = array[j + 1], array[j]
        end
      end
    end
    array
  end
end