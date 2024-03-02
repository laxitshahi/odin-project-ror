class Pokemon
  # Const
  POKEMON_YEARS = 8

  attr_accessor :name, :age

  # @@ To initalize class variable
  @@number_of_pokemon = 0

  def initialize(name, age)
    @@number_of_pokemon += 1
    self.name = name
    self.age = age * POKEMON_YEARS
  end

  def self.total_number_of_pokemon
    @@number_of_pokemon
  end

  def self.what_am_i
    'I am a pocket monster.'
  end

  # We can overwrite default functions by defining them
  def to_s
    # Ruby EXPECTS to_s to return a string, so you must
    # Else it will walk up the inheritance chain for a version that does return a string
    # return 42 --> This would just return the object id
    "This pokemon's name is #{name} and it is #{age} in pokemon years"
  end
end

puts Pokemon.total_number_of_pokemon

ryhorn = Pokemon.new('ryry', 19)

puts Pokemon.total_number_of_pokemon

# By default it uses the .to_s function
puts ryhorn

# p uses inspect by default, so the overwrite will not work
p ryhorn
