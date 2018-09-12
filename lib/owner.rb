class Owner
  @@all= [] 
  attr_accessor :name, :pets 
  attr_reader :species
  
  #Class Methods 
  
  def self.all
    @@all
  end
  
  def self.reset_all
    @@all.clear 
  end 
  
  def self.count 
    @@all.size 
  end 
  
  #Instance Methods 
  
  def initialize(species)
    @species = species 
    @@all << self 
    @pets = {:fishes => [], :dogs => [], :cats => []}
  end 
  
  def say_species 
    return "I am a #{@species}."
  end 
  
  #Pets 
  
  def buy_fish(name_of_fish)
    @pets[:fishes] << Fish.new(name_of_fish)
  end 
  
  def buy_cat(name_of_cat)
    @pets[:cats] << Cat.new(name_of_cat)
  end 
  
  def buy_dog(name_of_dog)
    @pets[:dogs] << Dog.new(name_of_dog)
  end 
end