class User
  
  attr_accessor :name , :email  #getter and setter
  def initialize(name,email)
    @name = name                #Instance variables are available across methods 
                                #for any particular instance or object. That means that 
                                #instance variables change from object to object. 
                                #Instance variables are preceded by the 
                                #at sign (@) followed by the variable name.
    @email = email
  end
  
  def self.identify_yourself    #when class wants to call its own method
                                #keyword is self
    puts "class metjod"
  end
  
  def run
    puts "hey i am running"
  end
  
end

class Buyer < User              # < means extends i.e Buyer extends User
  
  def run
    puts " I am not runnin in buyer class"
  end
end

  

class Seller < User
  
end

class Admin < User
  
end



user=User.new("salman", "salmanj.com")
puts "users name is #{ user.name } and email is #{ user.email }"

user.name = ("john")
user.email = ("joen @ kmska.com")
puts "users new name is #{ user.name } and email is #{ user.email}"

buyer1 = Buyer.new("jogn", " johnd@gmail.com")
buyer1.run

seller1 = Seller.new("sellboy", " sellboy@gmail.com")
seller1.run

admin1 = Admin.new("admin", " admin@gmail.com")
admin1.run

 User.identify_yourself