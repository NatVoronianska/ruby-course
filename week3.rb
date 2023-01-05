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

def print_welcome(name)
print ("Hello, #{name}")
end
print_welcome("nat")

def m1(proc)
 proc.call 2
end

pr = proc { |n = 0| 3 * n }

variable = m1(pr)
puts variable

def square_sum(numbers)
  sum = 0
  for num in numbers do
    sum += num ** 2
  end
  sum
end
numbers = [1,9,7,0]
puts square_sum(numbers)
arr1 = [1, 2, 3, 4, 5]
arr2 = [1, 2, 3, 4, 5]
puts arr1 == arr2

arr3 = (1..5).to_a()

print arr3

arr1 = [5, 4, 3, 2, 1]
arr3 = arr1.sort()
print(arr1)
puts(arr3)



dict = {a: 50, b: 60}
dict["b"] = 70
print dict[:b]
print dict.length

def count_words(sentence)
      sentence.split.length
end
puts (count_words("hello world or my best friend"))

def count_repetitions(arr, el)
    rep=0
    for element in arr do
       if element == el then 
          rep+=1
       end
    end
    return rep
end
puts(count_repetitions([1,1,5,2,2,3,3,5,5], 5))

def matrix_params(arr)
      m=u=o=0
  for i in 0...arr.size do
         for j in 0...arr.size do
            if i==j
                m+= arr[i][j]
            elsif i>j
                u+= arr[i][j]
            else
                o+= arr[i][j]
            end
         end
         
   end
   return({"m"=>m, "u"=>u, "o"=>o})
end
puts(matrix_params([[1,2,3],[4,5,6],[7,8,9]]))

re = /[A\- Z]/
print re.match?("Some– World")

class Pizza
 attr_reader :d
 @@count = 0
  def initialize(d)
     @@count+=1
     @number = @@count
     @ingredients = ''
     @d = d
   end
  def ingredients=(ingredient)
      a = ingredient.to_s
      s = a.gsub(/[\',\", \[, \]]/,'')
   @ingredients<<s
  end
  def description
     print("Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients}].")
    end
  end
  pizza1 = Pizza.new(24)
puts pizza1.description 
pizza1.ingredients = ["mushroom"]
puts pizza1.description 
class MyClass
  attr_accessor :field

  def to_s
    @field
  end

end

ref = MyClass.new
ref.field = 'Field'
puts ref


class Site
  attr_accessor :current_url
  HOME_URL = 'https://www.home.com'

  def initialize
    @home = HOME_URL
    @current_url = HOME_URL
  end

   def go_to(date)
    if @current_url == "#{@home}/#{date}"
      nil
    else
    @current_url = "#{@home}/#{date}"
    end
  end

  def to_s
    "*----------*\n home: #{@home}\n current url: #{@current_url}\n*----------*"
  end
end
a1 = Site.new
a1.go_to("url1")
puts a1
p a1.go_to("url1")

  class Site
  attr_reader :current_url
  HOME_URL = 'https://www.home.com'
  @@path = []

  def initialize
    @home = HOME_URL
    @current_url = HOME_URL
     @@path << @current_url
  end
private
 def self.correct
  @@path.each do |x|
    x.gsub!(" ","%20")
    end
  end

public
   def go_to(date)
     
    if @current_url == "#{@home}/#{date}"
       Site.correct
      nil
    else
    @current_url = "#{@home}/#{date}"
     Site.correct
       @@path << @current_url
    end
   end
  def >(other)
   if other.is_a? Site
    @current_url > other.current_url
   else 
    false
   end
  end
  def <(other)
   if other.is_a? Site
    @current_url < other.current_url
   else 
    false
   end
  end
def ==(other)
   if other.is_a? Site
    @current_url == other.current_url
   else 
    false
   end
  end
  def to_s
    "*----------*\n home: #{@home}\n current url: #{@current_url}\n history: #{@@path}\n*----------*"

  end
 end
 a1 = Site.new
a1.go_to("first")
a2 = Site.new
a2.go_to("second")
a1.go_to("first 1")
a1.go_to("first 2")
a1.go_to("first 2")
puts a1

class Parent
  private
  def method1
    'abc'
  end
end

class Child < Parent
  def method1
    super
  end
end

child = Child.new
puts child.method1

 module ConsoleInput 
  def string
   puts ('Enter any string')
   str = gets.strip.to_s
  end
  def number
  puts ('Enter any number')
   num = gets.strip
   if num.kind_of? Integer 
     returne num.to_i
   elsif num.kind_of? Float 
     returne num.to_f
  end
  def symbol 
   puts('Enter any letters')
   s = gets.strip.to_sym
  end
  def hash
   puts("Enter hash in format 'key: value' or 'key => value'")
   str = gets.strip
   
   puts str
  end
 end
end
sqrt(4) => 2.0
sqrt(5) => 2.2361
sqrt(-3) => виключення StandardError з повідомленням "The root of a negative number does not exist in rational numbers"

class PhoneFormatException < StandardError
  def initialize(user_phone = nil)
    @ph = user_phone
  end

  def to_s
    "Phone number #{@ph} is incorrect. You should enter phone in format +38dddddddddd"
  end
end

  module Validation 
    def phone_valid?(user_phone)
      if user_phone.match?(/^+38dddddddddd$/)
      end
    end
  end    

class User
  include Validation 
  attr_reader :name
  attr_writer :phone
  
  def initialize(name)
    @name = name
  end  
  def phone=(user_phone)
    if phone_valid?(user_phone)
      @phone = user_phone
    else
      raise PhoneFormatException.new(user_phone)
    end
  end
end


  user = User.new('Name')
  user.phone = '806787655678888'
  puts method(:phone_valid?).bind(self).call('+380876756543') 
=end
def third_order(num)
 if num==1||num==0 
  n=1
 else 
  n = rand(num+1)
 end 
 third = n**3
 count = 0
 begin
  count+=1
  puts("What is result #{n} * #{n} * #{n}?")
  int = gets.strip.to_i
  if third == int 
    puts ('Good job')
    return
  end
  raise
  rescue 
  if count<3 
   retry
  else puts'Try next time' 
  end
 end
end