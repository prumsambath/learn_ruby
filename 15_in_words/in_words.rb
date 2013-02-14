class Integer  
  def teen    
    case self
    when 0
      "ten"
    when 1
      "eleven"
    when 2
      "twelve"
    else 
      in_compound + "teen"    
    end
  end

  def ten
    case self
    when 1 
      "ten"
    when 2 
      "twenty"
    when 4
      "forty"
    else 
      in_compound + "ty"
    end
  end

  def in_compound
    case self
    when 3 
      "thir"    
    when 5 
      "fif"
    when 8 
      "eigh"
    else 
      in_words
    end
  end

  def in_words
    small_nums = %w(zero one two three four five six seven eight nine)
    if self < 10 
      small_nums[self]
    elsif self < 20 
      (self%10).teen
    elsif self < 100
      result = (self/10).ten      
      result += " " + (self%10).in_words if (self%10) != 0       
      result
    elsif self < 1000
      result = (self/100).in_words + " hundred"
      result += " " + (self%100).in_words if (self%100) != 0
      result
    else
      front, back = case (self.to_s.length)%3
      when 0
        [0..2,3..-1].map{ |i| self.to_s[i] }.map{ |i| i.to_i }
      when 2
        [0..1,2..-1].map{ |i| self.to_s[i] }.map{ |i| i.to_i }
      when 1
        [0..0,1..-1].map{ |i| self.to_s[i] }.map{ |i| i.to_i }
      end

      degree = [""] + %w(thousand million billion trillion)
      result = front.in_words + " " + degree[(self.to_s.length-1)/3]
      result += " " + back.in_words if back!=0
      result
    end
  end
end

