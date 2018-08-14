module TestHelper
  def puts_segmentation(title=nil)
    puts title
    puts "======================="
    yield
    puts "======================="
  end
end