def echo(word)
  word
end

def shout(word)
  word.upcase
end

def repeat(word, times=2)
  text = ""
  1.upto(times) { text << word << " " }
  text.chomp(" ")
end

def start_of_word(word, length)
  word[0..length-1]
end

def first_word(word)
  word.split[0]
end

def titleize(word)
  little_words = %[and over the]
  text = word.split.each { |w| w.capitalize! unless little_words.include?(w) }.join(" ")
  text[0].capitalize << text[1..-1]
end