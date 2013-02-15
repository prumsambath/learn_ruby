class Array
  def sum
    self.each.inject(0) { |total,i| total += i }
  end

  def square
    self.map { |i| i**2 }
  end

  def square!
    self.map! { |i| i**2 }
  end
end