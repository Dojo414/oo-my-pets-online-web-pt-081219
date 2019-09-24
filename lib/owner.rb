class Owner
  attr_reader :name, :species
  
  initialize(name, species=human)
  @name =name
  @species = species
end