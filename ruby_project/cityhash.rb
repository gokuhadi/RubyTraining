=begin

cityhash = 
{
"nagpur" => "712",
"pune" => "212",
"mumbai" => "22",
"delhi" => "11",
"bhandara" => "456"
}

def get_city_names (somehash)
  somehash.each {|k,v| puts k}
end

def get_city_codes (somehash,k)
  somehash[k]
end
  
loop do
  puts "Do you want to look up an area code based on city name? (y/n)"
  answer = gets.chomp
  
  if answer != "y"
    puts "you entered an invalid entry"
    break
  end
  
  puts "which city do you want the area code"
  get_city_names(cityhash)
  puts "enter your selection"
  cityname= gets.chomp
  
  if cityhash.include? (cityname)
    puts "The code for #{cityname} is #{get_city_codes(cityhash, cityname)}"
    
  else
    puts "INVALID ENTRY"
  

end
end

=end