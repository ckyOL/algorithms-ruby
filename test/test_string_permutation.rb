require './string/string_permutation'
require 'minitest/autorun'

class StringPermutationTest < Minitest::Test

  def setup
    @permutation = StringPermutation.new
    @str1 = 'a'
    @str2 = 'abcd'
    @str3 = 'aaa'
    @str_empty = ''
  end

  def test_permutation
    puts 'Test single'
    @permutation.rearrange(@str1)
    puts 'Test multi'
    @permutation.rearrange(@str2)
    puts 'Test same'
    @permutation.rearrange(@str3)
    puts 'Test empty'
    @permutation.rearrange(@str_empty)
  end
end