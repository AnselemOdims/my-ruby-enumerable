module MyEnumerable
  def all?(&block)
    result = true
    self.each { |item| result = false unless block.call(item) }
    result
  end
end