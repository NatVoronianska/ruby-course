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

def workday(today)
    case today
    when "пн", "вівт", "сер", "чт", "пт" 
    puts("#{today} - будній день")
    when "суб", "нед" 
     puts ("#{today} - вихідний день")
    else puts ("#{today} - точно день тижня? Можна вводити тільки значення пн, вівт, сер, чт, пт, суб, нед")
    end
end
workday("пн")

def parity() 
  print("Enter integer number")
  number = gets.strip.to_i
  number%2 > 0 ? puts("#{number} is even"):puts("#{number} is odd")
end

parity()