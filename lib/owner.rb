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
    Cat.all.find_all {|cat| cat.owner == self}
  end
  
  def dogs 
    Dog.all.find_all {|dog| dog.owner == self}
  end
  
  def buy_cat(cat_name)
    new_cat = Cat.new(cat_name,self)
  end
  
  def buy_dog(dog_name)
    new_dog = Dog.new(dog_name,self)
  end
  
  def walk_dogs
    dog_array = dogs
    dog_array.each do |dog|
      dog.mood = "happy"
    end
  end
    
  def feed_cats
    cat_array = cats
    cat_array.each do |cat|
      cat.mood = "happy"
    end
  end
  
  def sell_pets
    cat_array = cats
    dog_array = dogs
    cat_array.each do |cat|
      cat.mood = "nervous"
      cat_array.splice(cat)
    end
    dog_array.each do |dog|
      dog.mood = "nervous"
  
end