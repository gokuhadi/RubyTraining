

=begin

puts "welcome, enter your first name"
puts "enter your last name"
y=gets.chomp
puts "welcome to analyzer #{x} #{y},"
puts "length of first name is #{x.length}"
puts "length of last name is #{y.length}"  
puts " the reverse of the name is #{x.reverse} #{y.reverse}"

def divide(first_number,last_number)
  first_number.to_f / last_number.to_f
end


def subtract(first_number,last_number)
  first_number.to_f - last_number.to_f
end

def mod(first_number,last_number)
  first_number.to_f % last_number.to_f
end

def multiply(first_number,last_number)
  first_number.to_f * last_number.to_f
end


puts "make your choice 1.multiply 2. divide 3.subtract 4.mod"

prompt=gets.chomp
puts "enter your first number"
first_number=gets.chomp
puts "enter your second number"
last_number=gets.chomp

if prompt=="1"
  puts "you have chosen to multiply "
  result= multiply(first_number,last_number)
  
elsif prompt== "2"
 puts "you have chosen to divide "
  result= divide(first_number,last_number)
  
elsif prompt=="3"
  puts "you have chosen to subtract"
  result= subtract(first_number,last_number)
  
elsif prompt=="4"
  puts "you have chosen to mod"
  result= mod(first_number,last_number)
  
else 
  puts "invalid entry"
end

puts "the result is #{result}"



#puts "enter first number"
#first_number= gets.chomp
#puts "enter last number"
#last_number= gets.chomp


=end


