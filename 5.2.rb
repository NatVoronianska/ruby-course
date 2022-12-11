# дізнатися інформацію про поточний день та час
# цикл while
while true
  puts 'Do you want to know what is date and time now? Y/N'
  symbol = gets.strip
  if symbol == 'y' || symbol == 'Y'
    puts 'Current time is ' + Time.now.to_s
  else
    break
  end
end

# дізнатися інформацію про поточний день та час
# цикл until
until false
  puts 'Do you want to know what is date and time now? Y/N'
  symbol = gets.strip
  if symbol == 'y' || symbol == 'Y'
    puts 'Current time is ' + Time.now.to_s
  else
    break
  end
end

# дізнатися інформацію про поточний день та час
# цикл loop
loop do
  puts 'Do you want to know what is date and time now? Y/N'
  symbol = gets.strip
  if symbol == 'y' || symbol == 'Y'
    puts 'Current time is ' + Time.now.to_s
  else
    break
  end
end

# дізнатися інформацію про поточний день та час
# цикл loop
# обов'язково відповідати - так чи ні
loop do
  puts 'Do you want to know what is date and time now? Y/N'
  symbol = gets.strip
  case symbol
  when 'y', 'Y'
    puts "Current time is #{Time.now.to_s}"
  when 'n', 'N' then
    break
  else
    puts "You should enter 'Y' or 'N'"
  end
end

# перевірка, чи знає людина, в зображенні яких цифр немає нуля
# цикл loop
# можливість продовжувати перевірку - тільки одна - це написати букву 'Y' велику
loop do
  puts 'Введіть цифру, в зображенні якої немає 0'
  number = gets.strip.to_i
  next if number == 0 || number == 6 || number == 8 || number == 9

  puts "Правильно, в цифрі #{number} немає зображення 0"
  puts 'Хочете спробувати ще раз? (Y/N)'
  break if gets.strip != 'Y'
end
