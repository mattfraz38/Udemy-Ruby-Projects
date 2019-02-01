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

def get_city_name(area_code_choice, location)
  location.each do |city, area_code|
    if area_code_choice == area_code
      return "The city for area code #{area_code} is #{city}!"
    end
  end
  "City not found!"
end

def get_area_code(city_name_choice, dial_book)
  dial_book.each do |city, area_code|
    if city_name_choice == city
      return "The area code for #{city} is #{area_code}!"
    end
  end
  "Area code not found!"
end

loop do
  puts "What do you want to do?"
  puts
  puts "[1] Look up an area code from a city name."
  puts "[2] Look up a city from an area code."
  puts "[3] Exit"
  choice = gets.chomp.to_i
  if choice == 1
    puts "For which city do you want to know the area code?"
    puts
    dial_book.each_key { |city| puts city }
    puts
    city_name_choice = gets.chomp.downcase
    puts
    area_code_answer = get_area_code(city_name_choice, dial_book)
    puts area_code_answer
  elsif choice == 2
    puts
    puts "For which area code do you want to know the city name?"
    puts
    dial_book.each_value { |area_code| puts area_code }
    puts
    area_code_choice = gets.chomp
    city_name_answer = get_city_name(area_code_choice, dial_book)
    puts city_name_answer
  elsif choice == 3
    puts
    puts "Goodbye!"
    puts
    break
  else
    puts
    puts "Invalid entry!"
    puts
  end
end
