class Word
  @@word_list = []
  @definition_list = []
  attr_reader(:word)

  define_method(:initialize) do |attributes|
    @word = attributes.fetch(:word)
  end

  define_method(:save) do
    @@word_list.push(self)
  end

  define_singleton_method(:clear) do
    @@word_list = []
  end

  define_singleton_method(:all) do
    @@word_list
  end

  define_singleton_method(:find) do |word|
    found_word = nil
    @@word_list.each() do |word|
      if word.word().eql?(word)
        found_word = word
      end
    end
    found_word
  end
  # define_method(:add_definition) do |definition|
  #   @definition_list.push(definition)
  # end
end
