class Car
  @@count = 0
  def initialize(color, speed)
    @@count += 1
    @color = color
    @max_speed = speed
  end
  def info
    puts "Car with color #{@color} is one from #{@@count} car"
    @@count = 0
  end
end

first = Car.new 'Green', 120
first.info
second = Car.new 'Blue', 150
puts Car.class_variable_get('@@count')

class Car2
  @@count = 0
  def self.total
    @@count
  end
  def initialize(color, speed)
    @@count += 1
    @color = color
    @max_speed = speed
  end
end

first = Car2.new 'Green', 120
second = Car2.new('Blue', 150)
puts Car2.total


class Person
  @@persons = []
  def self.valid_string?(arg)
    return false unless arg.is_a?(String) && arg.length == 10

    arg.each_char do |element|
      return false if element.ord < '0'.ord || element.ord > '9'.ord
    end
    true
  end

  def initialize(number)
    if Person.valid_string?(number)
      @number = number
      @@persons.append self
    end
  end

  def self.all_persons
    @@persons
  end
end

per1 = Person.new('wer')
per1 = Person.new(1234567891)
per1 = Person.new('345')
per1 = Person.new('12345678910')
puts Person.all_persons.length
