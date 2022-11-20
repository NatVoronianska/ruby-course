def rgb(str)
      case str
      when "red" then puts("red") 
      when "blue" then puts("blue")
      when "green" then puts("green")
      else puts("Я не знаю такого кольору")
      end
end
rgb("yelow")

def saved_sqrt(a, b)
c = (a*b)>0?Math.sqrt(a*b):0
puts c
end
saved_sqrt(100,0)