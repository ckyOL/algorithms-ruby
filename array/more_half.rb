class MoreHalf
  def more_than_half?(array, result)
    count = 0
    (0...array.length).each do |i|
      count += 1 if array[i] == result
    end
    count * 2 > array.length
  end

  def more_than_half_num(array)
    return nil if array.nil?

    result = array[0]
    count = 1

    (1...array.length).each do |i|
      if count.zero?
        result = array[i]
        count = 1
      elsif array[i] == result
        count += 1
      else
        count -= 1
      end
    end
    return 0 unless more_than_half?(array, result)
    result
  end
end