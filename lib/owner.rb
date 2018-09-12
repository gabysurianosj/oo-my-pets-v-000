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
end