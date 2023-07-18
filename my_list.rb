require_relative 'Enumerable'

class MyList
  include Enumerable

  def initialize(*argements)
    @list = argements
  end

  def each(&block)
    @list.each(&block)
  end
end
