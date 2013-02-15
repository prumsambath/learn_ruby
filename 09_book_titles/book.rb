SKIPPED_WORDS = %w[a an the and in of]

class Book
  attr_accessor :title

  def title
    @title.capitalize.gsub(/\w+/) { |w| SKIPPED_WORDS.include?(w) ? w : w.capitalize }
  end
end