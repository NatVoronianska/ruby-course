=begin
prise = 0
print "Введіть ціну цукерок для 1 кг" + "\n"
prise = gets.strip.to_f
5.times do
 print 'Введіть в кг вагу цукерок, ціну яких Ви хочете дізнатися' + "\n"
 weigth = gets.strip.to_f
 puts(prise*weigth)
end
=end
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