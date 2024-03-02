class Potato
  def initialize(type, weight, color)
    @type = type
    @weight = weight
    @color = color
  end

  # Most prefered way for a attribute that is both a getter and setter
  attr_accessor :color, :type, :weight

  # Prefered method over get_ / set_
  # def color=(color)
  #   @color = color
  # end

  def sit
    # "#{@type} Potato is sitting"
    # This is prefered
    # Why? -> Any custom updates we want our instance variables to have will be reflected to ALL methods using the variable
    # If we did not do this, we would have to implement the custom logic EVERYTIME we used the instance variable
    "#{type} Potato is sitting"
  end

  def info
    "The #{type} Potato weighs #{weight} and has a vibrant #{color} color"
  end

  def change_info(t, w, c)
    # Here we can't simply just access the instance methods like so:
    # type = t
    # This is because this is an assignment sytanx, i.e. it conflicts with ruby's understanding of the code

    # As such we have to use the self.x syntax to clear this up for Ruby
    self.type = t
    self.weight = w
    self.color = c
  end
end

rusted_potato = Potato.new('Russet', 99, 'brown')

puts rusted_potato.sit

puts rusted_potato.info

rusted_potato.change_info('Yukon', 128, 'gold')
puts rusted_potato.info
