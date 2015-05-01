require('rspec')
require('./lib/definition.rb')

describe(Definition) do
  before() do
    Definition.clear()
  end

  describe('#definition') do
    it('returns the definition of the word') do
      test_definition = Definition.new({:definition => 'a red fruit'})
      expect(test_definition.definition()).to(eq('a red fruit'))
    end
  end

  describe('.all') do
    it('is empty at first') do
      expect(Definition.all()).to(eq([]))
    end
  end

  describe('#save') do
    it('adds a definition to the array of saved definitions') do
      test_definition = Definition.new({:definition => 'a red fruit'})
      test_definition.save()
      expect(Definition.all()).to(eq([test_definition]))
    end
  end
end
