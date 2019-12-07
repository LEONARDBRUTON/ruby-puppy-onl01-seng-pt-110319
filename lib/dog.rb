

require "pry"

class Dog
  attr_accessor :name 
  @@all = [] 
  
def initialize(name)
    @name = name
    binding.pry
   self.save
  
end

def self.all
    @@all
end

def self.print_all
    @@all.each do |dog|
    puts dog.name
  end
end
 
 def self.clear_all
     @@all.clear
 end
 
 def save
   @@all << self
 end
 
  Dog.all
  
end