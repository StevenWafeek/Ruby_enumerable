require_relative 'Enumerable'

class MyList
  include Enumerable
  
  def initialize(*argements)
    @list = argements
  end
  
  def each
    @list.each { |item| yield item }
  end
end