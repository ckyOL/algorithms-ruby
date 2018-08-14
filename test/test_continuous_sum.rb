require './array/continuous_sum'
require './test/test_helper'
require 'minitest/autorun'

class ContinuousSumTest < Minitest::Test
  include TestHelper
  def setup
    @sum1 = 15
    @sum2 = 3
    @sum3 = 9
    @sum4 = 4
    @sum5 = 0
    @operator = ContinuousSum.new
  end

  def test_sum
    puts_segmentation("sum: #{@sum1}") { @operator.find(@sum1) }
    puts_segmentation("sum: #{@sum2}") { @operator.find(@sum2) }
    puts_segmentation("sum: #{@sum3}") { @operator.find(@sum3) }
    puts_segmentation("sum: #{@sum4}") { @operator.find(@sum4) }
    puts_segmentation("sum: #{@sum5}") { @operator.find(@sum5) }
  end
end