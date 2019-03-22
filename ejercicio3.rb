
class Store
    attr_reader :name
    def initialize(name)
      @name = name
    end
  end
  
  store  =Store.new('tieneda1')
  puts store.name