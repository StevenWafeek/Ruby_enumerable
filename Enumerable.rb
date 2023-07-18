module Enumerable
def all?(&block)
    each{|item|return false unless yield item}
    true
  end
  
  def any?(&block)
    each { |item| return true if yield item }
    false
  end
  
  def filter(&block)
    result = []
    each { |item| result << item if yield item }
    result
  end
  
  alias select filter
end