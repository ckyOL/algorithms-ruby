class MergeSort
  # @param [Unsorted array] array
  # @return [Array]
  def merge_sort_recursive(array)
    return array if array.length < 2

    middle = array.length / 2

    left = merge_sort_recursive(array[0...middle])
    right = merge_sort_recursive(array[middle..-1])

    merge(left, right)
  end

  # @param [Left array] left
  # @param [Right array] right
  # @return [Merged array]
  def merge(left, right)
    merged = []
    until left.empty? || right.empty?
      merged << (left.first < right.first ? left.shift : right.shift)
    end
    merged + left + right
  end
end