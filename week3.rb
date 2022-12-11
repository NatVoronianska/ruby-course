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
=end
class Pizza
 @@count = 0
  def initialize(d,ingredients)
     @@count+=1
     @number = @@count
     @ingredients = ingredients
     if d == 25 || d == 50 then
      @d = d
     else @d = 0
      @number = 0
      @@count = @@count -1
      @ingredients = ""
     end
  end
  def description
    if @d == 25||@d ==50
    print("Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients.join(",")}].")
    else 
      print("Піца № #{@number} (діагональ = #{@d}) містить [#{@ingredients}].")
    end
  end
end
pizza1 = Pizza.new(10,['mushroom', 'cheese'])
pizza2 = Pizza.new(25,['mushroom', 'cheese', 'cherry'])
pizza1.description 
pizza2.description 