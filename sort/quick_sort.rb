class QuickSort
  # @param [Unsorted array] array
  # @return [left array + pivot + right array]
  def quick_space(array)
    return array if array.length < 2
    left, right = array[1..-1].partition { |i| i < array.first }
    quick_space(left) + [array.first] + quick_space(right)
  end

  # @param [Unsorted array] array
  # @param [Left index] left
  # @param [Right index] right
  # @return [array]
  def quick(array, left, right)
    if left < right
      index = sort_partition(array, left, right)
      quick(array, left, index)
      quick(array, index + 1, right)
    end
    array
  end

  # @param [Unsorted array] array
  # @param [Left index] left
  # @param [Right index] right
  # @return [Pivot index]
  def sort_partition(array, left, right)
    pivot = right - 1
    small = left - 1

    (left...right).each do |j|
      if array[j] < array[pivot]
        small += 1
        array[small], array[j] = array[j], array[small]
      end
    end
    small += 1
    array[small], array[pivot] = array[pivot], array[small]

    small
  end
end