ARTICLES = %w[a an the]
CONJUNCTIONS = %w[for and but or yet]
PREPOSITIONS = %w[in of]
class Book
  def title=(title)
    skipped_words = (ARTICLES << CONJUNCTIONS << PREPOSITIONS).flatten
    @title = title.split.each { |t| t.capitalize! unless skipped_words.include?(t) }.join(' ')
    @title = @title[0].capitalize << @title[1..-1]
  end

  def title
    @title
  end
end