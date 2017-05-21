students = {
  "salman" => "1",
  "jake" => "22",
  "jack" => "43",
  "messi" => "90",
  "rooney" => "10"
}

  
def getnames (something)
  something.each{ |k,v| puts k }
end

def getroll (something,key)
  something[key]
end  

puts "Choose a name from the following" 
getnames(students)
prompt=gets.chomp

puts "you selected #{ prompt } and the roll no is #{ getroll(students,prompt) }"
  

