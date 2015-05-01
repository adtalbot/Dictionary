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
end
