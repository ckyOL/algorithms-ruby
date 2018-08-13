class NumWithSum
  # @param [Int array] array
  # @param [Int] sum
  # @return [Int array] num / false
  def find_num(array, sum)
    num = []
    if search(array, sum, num)
      num
    else
      false
    end
  end

  # @param [Int array] array
  # @param [Int] sum
  # @param [Int array] num
  # @return [Bool]
  def search(array, sum, num)
    found = false
    return found if array.nil?

    left = 0
    right = array.length - 1

    while left < right
      cur_sum = array[left] + array[right]

      if cur_sum == sum
        num << array[left]
        num << array[right]
        found = true
        break
      elsif cur_sum > sum
        right -= 1
      else
        left += 1
      end
    end
    found
  end
end