
class Mypet
    attr_accessor :hungry , :satisfied ,:fullIntestine
    def initialize(name)
      @name = name
      @sleep = false
      @satisfied = 10 #esta lleno
      @fullIntestine = 0 #no necesita ir
      puts @name + ' ' + 'nace'
  
    end
  
    def hungry?
      @satisfied <= 0
    end
  
    def needToGo?
     @fullIntestine == 10
   end
  
    def camina_al_baño
      puts "#{@name} camina al baño"
      @satisfied = @satisfied - 5
      @fullintestine = 0
      timeLapse()
    end
    def timeLapse
      if @satisfied > 0
  # Mueve el alimento del estomago al intestino.
      @satisfied = @satisfied - 1
      @fullIntestine = @fullIntestine + 1
      else # Nuestro mascota esta hambrienta!
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts '¡' + @name + ' esta hambriento! En su desesperacion, ¡Murio de Hambre!'
        exit # Sale del programa.
      end
      if @fullIntestine >= 10
        @fullIntestine = 0
        puts '¡Uy! ' + @name + ' tuvo un accidente...'
      end
      if hungry?
        if @sleep
          @sleep = false
          puts '¡Se despierta de repente!'
        end
        puts 'El estomago de ' + @name + 'retumba...'
      end
      if needToGo?
        if @sleep
          @sleep = false
          puts 'Se despierta de repente!'
        end
        puts @name + ' hace la danza del baño...'
      end
      puts "comida :" + "*" * @satisfied
      puts 'intestino' + "*" * @fullIntestine
  end
  
  
  def comer
    @satisfied+= 3
    @fullIntestine= @fullIntestine + 1
    timeLapse()
  end
  def dormir
    @sleep = true
    puts "#{@name} se fue a dormir"
    timeLapse
  end
  
  end
  
  def menu
    puts '1)Camina al baño'
    puts  '2) comer'
    puts '3)dormir'
    puts '4) salir'
  
  end
  mascota = Mypet.new('jiji')
  var  = true
  while var
    menu()
    puts 'ingresa opcion'
    opcion =gets.chomp.to_i
    if opcion == 1
      mascota.camina_al_baño
    elsif opcion == 2
      mascota.comer
    elsif opcion == 3
      mascota.dormir
    elsif opcion == 4
      var  = false
  
    end
  end