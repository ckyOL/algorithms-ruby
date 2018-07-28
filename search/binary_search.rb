class BinarySearch
  # return -1 if error

  # @param [Input data] array
  # @param [Search number] num
  # @return [Array index]
  def binary_search_iteration(array, num)
    return -1 if array.empty?

    first = 0
    last = array.length - 1

    while first <= last
      mid = (first + last) / 2
      if array[mid] < num
        first = mid + 1
      elsif array[mid] > num
        last = mid - 1
      else
        return mid
      end
    end
    -1
  end

  # @param [Input data] array
  # @param [Array first index] first
  # @param [Array last index] last
  # @param [Search number] num
  # @return [Array index]
  def binary_search_recursive(array, first, last, num)
    return -1 if array.empty?

    mid = (first + last) / 2

    return -1 if first > last

    if array[mid] > num
      binary_search_recursive(array, first, mid - 1, num)
    elsif array[mid] < num
      binary_search_recursive(array, mid + 1, last, num)
    else
      return mid
    end
  end
end
