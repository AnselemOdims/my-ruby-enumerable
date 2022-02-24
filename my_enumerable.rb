module MyEnumerable
  def all?(&block)
    result = true
    each { |item| result = false unless block.call(item) }
    result
  end

  def any?(&block)
    result = false
    each { |item| result = true if block.call(item) }
    result
  end 
end