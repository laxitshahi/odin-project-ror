class Animal
  def speak
    'Hello'
  end

  attr_accessor :name

  def initialize(name)
    @name = name
  end
end

# < is used to define a child
class GoodDog < Animal
  # attr_accessor :name

  def initialize(name, color)
    # This will rub the initalize method in the PARENT (Animal)
    # super() -> ONLY calls the super class

    # super --> This super followed by assignment will cause name to be set to the color
    # @color = color
    #
    #
    super(name)
    @color = color
  end

  # parent functions can be refectored by simplily redefining the function
  def speak
    # here the super keyword is used to call the PARENT speak function
    super + ' ' "#{name} says Woof : )) "
  end

  def info
    "#{@name} says, 'I am the color #{@color}'"
  end
end

class Cat < Animal
end

# bombom = GoodDog.new('Spark')
# mewas = Cat.new
#
# puts bombom.speak
# puts mewas.speak

# bombom = GoodDog.new('red')
# puts bombom.speak

doggy = GoodDog.new('Tom', 'Navy')
puts doggy.info
