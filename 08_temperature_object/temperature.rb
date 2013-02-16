class Temperature
  def initialize(degree={f: 50})
    @degree = degree
  end

  def in_fahrenheit()
    return (@degree[:c]*9/5.0)+32 if @degree.include? :c
    @degree[:f]
  end

  def in_celsius    
    return (@degree[:f]-32)*5/9 if @degree.include? :f    
    @degree[:c]  
  end

  def self.from_celsius(degree)
    Temperature.new({c: degree})    
  end

  def self.from_fahrenheit(degree)
    Temperature.new({f: degree})
  end
end

class Celsius < Temperature
  def initialize(degree)
    super({c: degree})
  end
end

class Fahrenheit < Temperature
  def initialize(degree)
    super({f: degree})
  end
end

