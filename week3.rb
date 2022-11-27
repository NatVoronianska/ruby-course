=begin
prise = 0
print "Введіть ціну цукерок для 1 кг" + "\n"
prise = gets.strip.to_f
5.times do
 print 'Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися' + "\n"
 weigth = gets.strip.to_f
 puts(prise*weigth)
end

counter = 0
divider = 21
loop do
      print ("Введіть число, яке буде ділитися на #{divider} : ")
      int = gets.strip.to_i
      counter += 1
      if int == divider then
            puts("Число не повинно дорівнювати #{divider}")            
      elsif (int%divider == 0) then
            puts('Чудово')
            break       
      elsif (int%divider != 0 && counter == 5)
            puts('Невірно. Спробуйте ще раз')
            puts("Кількість спроб завершилася :(") 
            break
      else  
            puts('Невірно. Спробуйте ще раз')   
      end
      
end

def my_metod(a)
      return a * 2 if a==5
      return a * 3 if a == 10
      0
end
puts (my_metod(20))
=end
def print_welcome(name)
print ("Hello, #{name}")
end
print_welcome("nat")