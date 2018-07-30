require './linked_list/linked_list'
require 'minitest/autorun'

class LinkedListTest < Minitest::Test
  def setup
    @empty_list = LinkList.new
    @list = LinkList.new
    (1..3).each do |i|
      @list.add(i)
    end
  end

end