require('rspec')
require('./lib/word.rb')
require('./lib/definition.rb')

describe('Word') do
  before() do
    Word.clear()
  end

  describe('#word') do
    it('returns the word') do
      test_word = Word.new({:word => 'apple'})
      test_word.save()
      expect(test_word.word()).to(eq('apple'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Word.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a word to the array of word_list') do
      test_word = Word.new({:word => 'apple'})
      test_word.save()
      expect(Word.all()).to(eq([test_word]))
    end
  end
end
