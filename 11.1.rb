class Rectangle
    GRAM_TO_POUND = 0.00220462
    POUND_TO_GRAM = 453.592
  
    def initialize(x, y)
      @width = x
      @height = y
    end
  
    def paint_amount(density, unit)
      density *= POUND_TO_GRAM if unit != '1'
      @width * @height * density
    end
  
    def self.to_pound(gram)
      gram * GRAM_TO_POUND
    end
  
    private
    def self.to_gram(pound)
      pound * POUND_TO_GRAM
    end
  
    public def to_s
      "#{@width} x #{@height}"
    end
  
    def inspect
      "Width = #{@width}, height = #{@height}"
    end
  
  end

puts 'Введіть через кому розміри ділянки'
xy = gets.strip.split(/\s*,\s*/)
ar = Rectangle.new(xy[0].to_i, xy[1].to_i)
puts 'Введіть данні по кількість фарби, яка буде йти на 1 кв.м. площі.
Спочатку введіть "1" - якщо відома кількість в грамах, будь-який інший символ - якщо відома кільість в фунтах'
choice = gets.strip
choice_for_output = choice == '1' ? 'гр' : 'фунтах'
puts "Тепер введіть кількість в #{choice_for_output} : "

volume = ar.paint_amount(gets.strip.to_f, choice)

puts "Ви хочете отримати відповідь у #{choice_for_output}? (y/n)"
choice = gets.strip

choice_for_output = choice_for_output == 'гр' ? 'фунтів' : 'гр' if choice != 'y'
choice_for_output = 'фунтів' if choice == 'y' && choice_for_output == 'фунтах'

if choice_for_output == 'фунтів'
  volume = Rectangle.to_pound(volume)
end

puts "Вам потрібно #{volume} #{choice_for_output} фарби для ділянки #{ar}"
p ar

  