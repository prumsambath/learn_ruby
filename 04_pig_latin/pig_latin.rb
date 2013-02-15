VOWELS = %[a e i o u]
SINGLE_PHONEMES = %w[qu squ]

def translate(text)
  text.split.map { |w| translate_word(w) }.join(' ')
end

def translate_word(word)  
  original_word = word
  punctuation = word.slice!(-1) if word.match(/[\.,!]$/)
  unless start_with_vowel?(word)
    consonant = start_consonant(word)
    word = word[consonant.length..-1] << consonant    
  end
  word << 'ay'
  word.capitalize! if capitalized?(original_word)  
  word << punctuation.to_s
end

def start_with_vowel?(word)
  VOWELS.include?(word[0])
end

def start_consonant(word)  
  word.start_with?(*SINGLE_PHONEMES) ? word[0..word.index('u')] : word[/^[^aeiou\W]+/]
end

def capitalized?(word)
  word[0] == word[0].capitalize
end
