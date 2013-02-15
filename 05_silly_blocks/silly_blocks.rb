def reverser
  yield.split.map { |w| w.reverse! }.join(' ')
end

def adder(value=1)
  yield + value
end

def repeater(times=1)
  1.upto(times) { yield }
end