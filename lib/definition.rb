class Definition
  @@definition_list = []
  attr_reader(:definition)

  define_method(:initialize) do |attributes|
    @definition = attributes.fetch(:definition)
  end

  define_singleton_method(:clear) do
    @@definition_list = []
  end

  define_singleton_method(:all) do
    @@definition_list
  end
end
