def rgb(str)
      case str
      when "red" then puts("red") 
      when "blue" then puts("blue")
      when "green" then puts("green")
      else puts("Я не знаю такого кольору")
      end
end
rgb("yelow")