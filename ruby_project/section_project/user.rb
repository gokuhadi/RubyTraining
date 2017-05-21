require 'json'           #gives ability to access the json file

class User
  
  attr_accessor :email, :name, :permissions
  
  def initialize(*args)     # * splat operator, takes in args and creates array. eg, first arg will be args0, args1 is the next arg
    
    @email=args[0]
    @name=args[1]
    @permissions=User.permissions_from_template  #method
  end
  
  def self.permissions_from_template  #calling this method in class so in class methods use "self"
  
    file = File.read 'user_permissions.json' #read the json file and store to variab  
     JSON.load(file)   #create JSON object of what is read, symbolizenames is for making output look good
 
  end

  def save
    
    self_json = {email: @email, name: @name, permissions: @permissions}.to_json   #self_json is a variable where it is assigned
    open('users.json', 'a') do |file|
      file.puts self_json
    end
  end
end
