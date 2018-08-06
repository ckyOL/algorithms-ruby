class StringPermutation
  def rearrange(str)
    return nil if str.nil?
    exchange(str, 0)
  end

  def exchange(str, index)
    if index == str.length - 1
      puts str
    else
      (index...str.length).each do |char|
        str[index], str[char] = str[char], str[index]
        exchange(str, index + 1)
        str[index], str[char] = str[char], str[index]
      end
    end
  end
end