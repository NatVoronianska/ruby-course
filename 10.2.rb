
class Car
  @@count = 0
  def initialize(color, speed)
    @@count += 1
    @color = color
    @max_speed = speed
  end
end

first_car = Car.new('red', 150)
second_car = Car.new('green', 200)

puts Car.class_variable_get('@@count')

def name
  local_var = 'local'
  puts local_var
end
#puts local_var

class MyClass1
  def initialize var
    @instance_var = var
  end
end
obj1 = MyClass1.new(5)
obj2 = MyClass1.new(10)

class MyClass2
  @@class_var = 10
  def set_static(a); @@class_var = a end
  def get_static ; @@class_var end
end
obj1 = MyClass2.new; obj2 = MyClass2.new
obj1.set_static(-1); puts obj2.get_static


$global_var = 3
def name
  $global_var = 'local'
  puts $global_var
end
name
puts $global_var



