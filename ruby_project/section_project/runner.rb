require 'pp'      #pretty print

require_relative 'user'   #require_relative allows you to "load a file that is relative to the file containing the require_relative statement"
                              #meaning, use the user folder i used in this folder
user = User.new 'ronaldo@gmail.com', 'messi'

pp user

user.save