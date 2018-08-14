class ContinuousSum
  def find(sum)
    return nil if sum < 3

    left = 1
    right = 2
    mid = (sum + 1) / 2
    cur_sum = left + right

    while left < mid
      if cur_sum == sum
        print_sec(left, right)
      end

      while cur_sum > sum && left < mid
        cur_sum -= left
        left += 1

        if cur_sum == sum
          print_sec(left, right)
        end
      end

      right += 1
      cur_sum += right
    end
  end

  def print_sec(left, right)
    (left..right).each do |x|
      print "#{x} "
    end
    puts
  end
end