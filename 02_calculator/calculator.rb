def add(a,b)
  a+b
end

def subtract(a,b)
  a-b
end

def sum(a)
  a.each.inject(0) { |total,i| total + i }
end

def multiply(*a)
  a.each.inject(1) { |total,i| total * i }
end  

def power(a,b)
  a**b
end

def factorial(a)
  return 0 if a == 0
  return 1 if a == 1
  a * factorial(a-1)
end
