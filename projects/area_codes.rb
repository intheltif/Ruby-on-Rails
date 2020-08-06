# The hash that contains the city to area code mapping
dial_book = {
  "newyork" => "212",
  "newbrunswick" => "732",
  "edison" => "908",
  "plainsboro" => "609",
  "sanfrancisco" => "301",
  "miami" => "305",
  "paloalto" => "650",
  "evanston" => "847",
  "orlando" => "407",
  "lancaster" => "717"
}
 
# Get city names from the hash
def get_city_names(somehash)
  # return an array of the keys of the hash parameter
  return somehash.keys
end
 
# Get area code based on given hash and key
def get_area_code(somehash, key)
  # Check that the hash has a mapping to the specified key
  if somehash.include? key
    # Return the string we want to show the user of the city to area code map
    return "The area code for #{key} is #{somehash[key]}"
  else
    # Return the below statement if the hash does not contain the key
    return "That city does not exist."
  end
end
 
# Execution flow
loop do
  # Provided code
  puts "Do you want to lookup an area code based on a city name?(Y/N)"
  answer = gets.chomp.downcase
  break if answer != "y"
  
  # Print out the keys to the screen
  city_names = get_city_names(dial_book)
  city_names.each { |city| puts city }
  
  # Have user choose a city and print out the result
  puts "Which city do you want the area code for?"
  selection = gets.chomp.downcase
  puts get_area_code(dial_book, selection)

end

