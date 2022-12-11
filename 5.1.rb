# перевірка, чи знає користувач, чому дорівнює добуток двох чисел
char = 'Y'
while char == 'Y' || char == 'y'
  puts 'Enter first integer number'
  number_1 = gets.strip.to_i
  puts 'Enter second integer number'
  number_2 = gets.strip.to_i
  print 'What is result of multuplying ' + number_1.to_s + ' and ' + number_2.to_s + ' ? '
  number_3 = gets.strip.to_i
  if number_1 * number_2 == number_3
    puts 'Correct result'
  else
    puts 'Result is wrong'
  end
  puts 'Enter "Y" if you want to continue'
  char = gets.strip
end

#перевірка, чи знає користувач правильний пароль (з обмеженою можливістю вводу неправильного паролю)
counter = 0
password = 'very_strong_password'
access_allowed = false
loop do
  puts 'Enter your password'
  access_allowed = (gets.strip == password)
  counter += 1
  break if access_allowed || counter == 3
end
puts access_allowed
