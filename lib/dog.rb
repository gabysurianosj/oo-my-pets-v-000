class Dog
  attr_accessor :mood
  attr_reader :name
  
  def initialize(name)
    @name = name
    @mood = "nervos"
  end
end