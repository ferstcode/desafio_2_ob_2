class Dog
    def initialize(info)
      @nombre  = info[:nombre]      
      @color = info[:color]
      @raza = info[:raza]
    end  
    def nombre
      @nombre
    end
    def raza
      @raza
    end
    def color
      @color
    end
end
  
  
  info = {nombre: 'Amelie', color: 'Dorado',raza:'Mestizo'}
  perro = Dog.new(info)
  puts "Mi mascota se llama #{perro.nombre} es de color #{perro.color} y es #{perro.raza}"