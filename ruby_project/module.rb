module Destructable
  
  def destroy (object)
    puts "i will destroy the object"
  end  
  
end


class Boy
  include Destructable          #the module runs in class,
                                #objects of class can also access the module
  attr_accessor :name , :email  
  
  def initialize(name,email)     #getter and setter
    @name = name
    @email = email
  end
  
  def self.identify_yourself
    puts "class metjod"
  end
  
  def run
    puts "hey i am running"
  end
  
end
boy = Boy.new("sal", "sal.com")
boy.destroy("xy")
puts "#{boy.name}, #{boy.email}"  
