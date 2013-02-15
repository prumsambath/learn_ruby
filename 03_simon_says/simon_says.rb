def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times=2)
  ((word + ' ') * times).chomp(' ')  
end

def start_of_word(word, length)
  word[0..length-1]
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  skipped_words = %[and over the]
  word.capitalize.gsub(/\w+/) { |w| skipped_words.include?(w) ? w : w.capitalize }  
end