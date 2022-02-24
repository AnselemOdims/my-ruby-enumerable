require './my_enumerable.rb'

class MyList

  include MyEnumerable

  def initialize(*list)
    @list = list
  end

  def each(&block)
    @list.each(&block)
  end

end

list = MyList.new(1, 2, 3, 4)

puts list.all? {|e| e > 5}