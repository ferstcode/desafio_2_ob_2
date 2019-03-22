class Morseable
    def initialize(number)
        @number = number       
    end    
    def hash(number)
        h ={
          0 =>  '-----',
          1 => '.----',
          2 => '..---',
          3 => '...--',
          4 => '....-',
          5 => '.....',
          6 => '-....',
          7 =>'--...',
          8 => '---..',
          9 => '----.'
        }
        h[number]   
    end
    def to_morse
        hash(@number)
    end
end    
morse4  =Morseable.new(4)
morse3 = Morseable.new(3)

puts  morse4.to_morse
puts  morse3.to_morse
