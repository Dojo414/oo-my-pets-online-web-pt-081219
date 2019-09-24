class Owner
  attr_reader :name, :species
  @@owner_count = 0
  @@all = []
  
  def initialize(name, species="human")
  @name = name
  @species = species
  @@all << self
  @@owner_count += 1
  end
  
  def say_species
    return "I am a #{@species}."
  end
  
  def self.all
    @@all
  end
  
  def self.count
    @@owner_count
  end
  
  def self.reset_all
    @@owner_count = 0
  end
  
  def cats
    
  
end